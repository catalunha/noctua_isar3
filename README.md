# noctua_isar

A new Flutter project.

# History

## build

flutter pub run build_runner build

## mocks
https://jsonplaceholder.typicode.com/photos
https://www.mockaroo.com/

https://medium.com/flutterdevs/rendering-image-from-byte-buffer-int8list-in-flutter-f89a6db64b8f


```dart
void toCameraPage() async {
    final ProductImageModel? result = await callCamera();
    if (result != null) {
      productImageModel.value = result;
      product?.imagem?.md5 = getProductImageModel.hashMd5 ?? product?.imagem?.md5 ?? '';
      if (product!.imagem!.md5!.isEmpty) {
        product?.imagem?.url = '';
        product?.imagem?.status = AppParsers.getImageStatus(ImageStatus.none);
      }
    }
  }
Future<ProductImageModel?> callCamera() async {
    final ProductImageModel productImageModel = ProductImageModel();

    productImageModel.filePath = getProductImageModel.filePath ?? '';
    productImageModel.hashMd5 = product?.imagem?.md5 ?? '';
    productImageModel.url = product?.imagem?.url ?? '';

    final ProductImageModel result =
        await Get.toNamed(_appPages.nexCamera, arguments: {'data': productImageModel}) as ProductImageModel;
    return result;
  }
Future<void> loadImage() async {
    try {
      XFile? file;
      file = await picker.pickImage(source: ImageSource.gallery);
      editImage(file!.path);
    } catch (e) {
      logger('🟥  ERROR LOAD GALERIA ${e.toString()}');
    }
  }
Future<void> editImage(String path) async {
    final File? croppedFile = await ImageCropper().cropImage(
        sourcePath: path,
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
        androidUiSettings: AndroidUiSettings(
          toolbarTitle: 'edit_image'.tr,
          toolbarColor: NexThemes.colors.white,
          toolbarWidgetColor: NexThemes.colors.black,
        ),
        iosUiSettings: IOSUiSettings(
          title: 'edit_image'.tr,
          cancelButtonTitle: 'cancel'.tr,
          doneButtonTitle: 'conclude'.tr,
        ));
    if (croppedFile != null) {
      onImageSelected(croppedFile);
    }
  }
import 'package:get/get.dart';
import 'package:nex_mobile_app/features/auxiliary_pages/nex_dialog/nex_dialog_two_button.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../utils/logger.dart';

class PermissionController {
  PermissionController();

  ///Este método checa se esta permissão foi autorizada
  ///se não foi autorizada, vai solicitar a pemissão
  ///se foi negada pra sempre vai abrir uma modal com um botão pra configurações
  ///o modal indica o nome da permissão e porque queremos essa permissão
  Future<bool> checkPermission({
    required Permission permission,
  }) async {
    try {
      PermissionStatus? permissionStatus;
      String? permissionName = permission.toString().replaceAll('Permission.', '').capitalizeFirst;
      bool? isPermissionGranted = await permission.request().isGranted;

      permissionStatus = await permission.request();

      if (permissionStatus.index == 4) {
        Get.dialog(
          NexDialogTwoButton(
            onSave: openAppSettings,
            onCancel: Get.back,
            titleCancelButton: 'deny'.tr,
            titleSaveButton: 'open_settings'.tr,
            middleText: '${'this_app_needs'.tr}: $permissionName',
            topBoldText: '',
            titleText: '$permissionName ${'permission'.tr}',
          ),
        );
      }

      logger('🟦  Check $permissionName --> ${isPermissionGranted.toString()}');
      return isPermissionGranted;
    } catch (e) {
      logger('🟥  PermisisonController.checkPermission -> $e');
      return false;
    }
  }
}
import 'dart:developer' as developer;
void logger(String value, {bool isError = false}) {
  developer.log(value, name: 'NEXAPP');
}
```