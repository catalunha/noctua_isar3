import 'dart:convert';
import 'dart:io';

// import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:noctua_isar/app/domain/models/person_model.dart';
import 'package:noctua_isar/app/routes.dart';
import 'package:noctua_isar/app/view/utils/app_assets.dart';
import 'package:path_provider/path_provider.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await openIsarInstance();
    Get.toNamed(Routes.peopleSearch);
  }

  Future<void> openIsarInstance() async {
    print('+++ openIsarInstance');

    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;

    print('appDocPath: $appDocPath');
    var isar = await Isar.open(
      [PersonModelSchema],
      directory: appDocPath,
    );
    // final contact = ContactModel(name: "isarId name1a gen class");
    // await isar.writeTxn(() async {
    //   await isar.contactModels.put(contact);
    // });
    // final contact2 = ContactModel(name: "isarId name2a gen class");
    // await isar.writeTxn(() async {
    //   await isar.contactModels.put(contact2);
    // });

    // final allContacts = await isar.contactModels.where().findAll();
    // for (var element in allContacts) {
    //   print(element);
    // }
    // await deleteAllPeople(isar);
    final personModelsCount = await isar.personModels.count();
    // final allPhotos = await isar.personModels.where().findAll();
    print('openIsarInstance -> personModelsCount $personModelsCount');
    if (personModelsCount == 0) {
      print('loading personModels...');
      await peopleJson2Isar(isar);
    }
    // categoryList = [...allPhotos];
    print('--- openIsarInstance');
  }

  Future<void> peopleJson2Isar(Isar isar) async {
    dynamic data = await _loadJsonPeople();
    await deleteAllPeople(isar);
    List<PersonModel> personModeltemp = <PersonModel>[].obs();
    // for (var element in data) {
    for (var i = 0; i < 1000; i++) {
      dynamic element = data[i];
      element['birthday'] = "1969-07-20T20:18:04.000Z";
      element['photoUrl'] =
          "https://parsefiles.back4app.com/SLWtrlBJSzdUpAvA2Jh1aXkr87k65vuB3Mjvkjco/ec44adbb2d9ea27fe64a8607b00586e1_a3.png";
      PersonModel personModel = PersonModel.fromMap(element);
      personModel.photoByte = await _getBytes(element['photoUrl']);
      personModeltemp.add(personModel);
    }
    print('personModeltemp: ${personModeltemp.length}');
    await isar.writeTxn(() async {
      for (var element in personModeltemp) {
        await isar.personModels.put(element);
      }
    });
  }

  Future<List<byte>> _getBytes(imageUrl) async {
    List<byte>? image;
    final ByteData data =
        await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl);
    image = data.buffer.asUint8List();
    // print(image);
    return image;
  }

  Future<void> deleteAllPeople(Isar isar) async {
    print('deleteAllPerson');
    await isar.writeTxn(() async {
      isar.personModels.clear();
      // final allPhotosId =
      //     await isar.personModels.where().isarIdProperty().findAll();
      // isar.personModels.deleteAll(allPhotosId);
    });
  }

  Future<dynamic> _loadJsonPeople() async {
    var jsonData = await rootBundle.loadString(AppAssets.people);
    final data = json.decode(jsonData);
    return data;
  }
}
