import 'dart:io';

import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:noctua_isar/app/domain/models/contact_model.dart';
import 'package:path_provider/path_provider.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    openIsarInstance();
  }

  void openIsarInstance() async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    // I/flutter (26634): tempPath: /data/user/0/org.brintec.noctua_isar.noctua_isar/cache

    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    // I/flutter (26634): appDocPath: /data/user/0/org.brintec.noctua_isar.noctua_isar/app_flutter

    print('tempPath: $tempPath');
    print('appDocPath: $appDocPath');
    final isar = await Isar.open(
      [ContactModelSchema],
      directory: appDocPath,
    );
    //     final isar = await Isar.open(
    //   schemas: [ContactModelSchema],
    //   directory: appDocPath,
    // );
    final contact = ContactModel()..name = "name1";
    await isar.writeTxn(() async {
      contact.id = await isar.contactModels.put(contact);
    });
    // await isar.writeTxn((isar) async {
    //   contact.id = await isar.contactModels.put(contact);
    // });
    final allContacts = await isar.contactModels.where().findAll();
    print(allContacts.toString());
  }
}
