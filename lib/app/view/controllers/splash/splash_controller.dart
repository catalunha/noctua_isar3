import 'dart:io';

import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:noctua_isar/app/domain/models/contact_model.dart';
import 'package:path_provider/path_provider.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    openIsarInstance();
  }

  void openIsarInstance() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;

    print('appDocPath: $appDocPath');
    final isar = await Isar.open(
      [ContactModelSchema],
      directory: appDocPath,
    );
    // final contact = ContactModel()..name = "name1";
    // await isar.writeTxn(() async {
    //   await isar.contactModels.put(contact);
    // });
    // final contact2 = ContactModel()..name = "name2";
    // await isar.writeTxn(() async {
    //   await isar.contactModels.put(contact2);
    // });
    final allContacts = await isar.contactModels.where().findAll();
    for (var element in allContacts) {
      print(element.id);
      print(element.name);
    }
  }
}
