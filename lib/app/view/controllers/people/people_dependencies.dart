import 'package:get/get.dart';
import 'package:noctua_isar/app/view/controllers/people/people_controller.dart';

class PeopleDependencies implements Bindings {
  @override
  void dependencies() {
    Get.put<PeopleController>(
      PeopleController(),
    );
  }
}
