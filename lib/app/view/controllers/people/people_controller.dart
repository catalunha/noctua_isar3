import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:noctua_isar/app/domain/models/person_model.dart';
import 'package:noctua_isar/app/routes.dart';

class PeopleController extends GetxController {
  List<PersonModel> peopleList = <PersonModel>[].obs;
  var peopleCount = 0.obs;
  @override
  void onInit() async {
    super.onInit();
    await countPeople();
    Get.toNamed(Routes.peopleSearch);
  }

  Future<void> countPeople() async {
    Isar? isar1 = Isar.getInstance();
    peopleCount.value = await isar1!.personModels.count();
    print('PeopleController -> countPeople ${peopleCount.value}');
  }

  Future<void> search({
    required bool aliasContainsBool,
    required String aliasContainsString,
    required bool aliasEqualToBool,
    required String aliasEqualToString,
    required bool nameContainsBool,
    required String nameContainsString,
    required bool nameEqualToBool,
    required String nameEqualToString,
    required bool cpfContainsBool,
    required String cpfContainsString,
    required bool cpfEqualToBool,
    required String cpfEqualToString,
    required bool motherContainsBool,
    required String motherContainsString,
    required bool motherEqualToBool,
    required String motherEqualToString,
    required bool markContainsBool,
    required String markContainsString,
    required bool markContains2Bool,
    required String markContains2String,
    required bool markContains3Bool,
    required String markContains3String,
  }) async {
    Isar? isar1 = Isar.getInstance();
    peopleList.clear();
    var peopleFiltered = <PersonModel>[];
    var peopleFilter = isar1!.personModels.filter();

    QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> a;
    a = peopleFilter.idIsarIsNotNull();
    if (aliasContainsBool) {
      a = a.aliasElementContains(aliasContainsString);

      // peopleFiltered.addAll(await isar1!.personModels
      //     .filter()
      //     .aliasElementContains(aliasContainsString)
      //     .findAll());
    }
    if (aliasEqualToBool) {
      a = a.aliasElementEqualTo(aliasContainsString);

      // peopleFiltered.addAll(await isar1.personModels
      //     .filter()
      //     .aliasElementEqualTo(aliasEqualToString)
      //     .findAll());
    }
    if (nameContainsBool) {
      a = a.nameContains(nameContainsString);

      // peopleFiltered.addAll(await isar1.personModels
      //     .filter()
      //     .nameContains(nameContainsString)
      //     .findAll());
    }
    if (nameEqualToBool) {
      a = a.nameEqualTo(nameEqualToString);

      // peopleFiltered.addAll(await isar1.personModels
      //     .filter()
      //     .nameEqualTo(nameEqualToString)
      //     .findAll());
    }
    if (cpfContainsBool) {
      a = a.cpfContains(cpfContainsString);

      // peopleFiltered.addAll(await isar1.personModels
      //     .filter()
      //     .cpfContains(cpfContainsString)
      //     .findAll());
    }
    if (cpfEqualToBool) {
      a = a.cpfEqualTo(cpfEqualToString);

      // peopleFiltered.addAll(await isar1.personModels
      //     .filter()
      //     .cpfEqualTo(cpfEqualToString)
      //     .findAll());
    }
    if (motherContainsBool) {
      a = a.motherContains(motherContainsString);

      // peopleFiltered.addAll(await isar1.personModels
      //     .filter()
      //     .motherContains(motherContainsString)
      //     .findAll());
    }
    if (motherEqualToBool) {
      a = a.motherEqualTo(motherEqualToString);

      // peopleFiltered.addAll(await isar1.personModels
      //     .filter()
      //     .motherEqualTo(motherEqualToString)
      //     .findAll());
    }

    if (markContainsBool) {
      a = a.marksContains(markContainsString);

      // peopleFiltered.addAll(await isar1!.personModels
      //     .filter()
      //     .marksContains(markContainsString)
      //     .findAll());
    }
    if (markContains2Bool) {
      a = a.marksContains(markContains2String);

      // peopleFiltered.addAll(await isar1!.personModels
      //     .filter()
      //     .marksContains(markContains2String)
      //     .findAll());
    }
    if (markContains3Bool) {
      a = a.marksContains(markContains3String);

      // peopleFiltered.addAll(await isar1!.personModels
      //     .filter()
      //     .marksContains(markContains3String)
      //     .findAll());
    }

    // peopleFiltered.addAll(await isar1!.personModels
    //     .filter()
    //     .marksContains(markContainsString)
    //     .marksContains(markContains2String)
    //     .marksContains(markContains3String)
    //     .findAll());

    // a = a.marksContains(markContainsString);
    // a = a.marksContains(markContains2String);
    // a = a.marksContains(markContains3String);
    // a.marksContains(markContains2String);
    // peopleFiltered.addAll(
    //     await peopleFilter.marksContains(markContains3String).findAll());
    // peopleFilter = peopleFilter.marksContains(markContains3String);
    // peopleFilter = await isar1.personModels.filter().peopleFilter.findAll();
    peopleFiltered.addAll(await a.findAll());
    // peopleFiltered.addAll(peopleFilter.findAll());

    // peopleFiltered =
    //     await isar1!.personModels.where().limit(25).findAll();
    peopleList.addAll(peopleFiltered);
    print('PeopleController -> peopleList ${peopleList.length}');
    Get.toNamed(Routes.people);
  }
  /*

  Future<void> search({
    required bool aliasContainsBool,
    required String aliasContainsString,
    required bool aliasEqualToBool,
    required String aliasEqualToString,
    required bool nameContainsBool,
    required String nameContainsString,
    required bool nameEqualToBool,
    required String nameEqualToString,
    required bool cpfContainsBool,
    required String cpfContainsString,
    required bool cpfEqualToBool,
    required String cpfEqualToString,
    required bool motherContainsBool,
    required String motherContainsString,
    required bool motherEqualToBool,
    required String motherEqualToString,
    required bool markContainsBool,
    required String markContainsString,
    required bool markContains2Bool,
    required String markContains2String,
    required bool markContains3Bool,
    required String markContains3String,
  }) async {
    Isar? isar1 = Isar.getInstance();
    peopleList.clear();
    var peopleFiltered = <PersonModel>[];
    if (aliasContainsBool) {
      peopleFiltered.addAll(await isar1!.personModels
          .filter()
          .aliasElementContains(aliasContainsString)
          .findAll());
    }
    if (aliasEqualToBool) {
      peopleFiltered.addAll(await isar1!.personModels
          .filter()
          .aliasElementEqualTo(aliasEqualToString)
          .findAll());
    }
    if (nameContainsBool) {
      peopleFiltered.addAll(await isar1!.personModels
          .filter()
          .nameContains(nameContainsString)
          .findAll());
    }
    if (nameEqualToBool) {
      peopleFiltered.addAll(await isar1!.personModels
          .filter()
          .nameEqualTo(nameEqualToString)
          .findAll());
    }
    if (cpfContainsBool) {
      peopleFiltered.addAll(await isar1!.personModels
          .filter()
          .cpfContains(cpfContainsString)
          .findAll());
    }
    if (cpfEqualToBool) {
      peopleFiltered.addAll(await isar1!.personModels
          .filter()
          .cpfEqualTo(cpfEqualToString)
          .findAll());
    }
    if (motherContainsBool) {
      peopleFiltered.addAll(await isar1!.personModels
          .filter()
          .motherContains(motherContainsString)
          .findAll());
    }
    if (motherEqualToBool) {
      peopleFiltered.addAll(await isar1!.personModels
          .filter()
          .motherEqualTo(motherEqualToString)
          .findAll());
    }

    // if (markContainsBool) {
    //   peopleFiltered.addAll(await isar1!.personModels
    //       .filter()
    //       .marksContains(markContainsString)
    //       .findAll());
    // }
    // if (markContains2Bool) {
    //   peopleFiltered.addAll(await isar1!.personModels
    //       .filter()
    //       .marksContains(markContains2String)
    //       .findAll());
    // }
    // if (markContains3Bool) {
    //   peopleFiltered.addAll(await isar1!.personModels
    //       .filter()
    //       .marksContains(markContains3String)
    //       .findAll());
    // }

    // peopleFiltered.addAll(await isar1!.personModels
    //     .filter()
    //     .marksContains(markContainsString)
    //     .marksContains(markContains2String)
    //     .marksContains(markContains3String)
    //     .findAll());

    var peopleFilter = isar1!.personModels.filter();

    QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> a;
    a = peopleFilter.marksIsNotEmpty();
    a = a.marksContains(markContainsString);
    a = a.marksContains(markContains2String);
    a = a.marksContains(markContains3String);
    // a.marksContains(markContains2String);
    // peopleFiltered.addAll(
    //     await peopleFilter.marksContains(markContains3String).findAll());
    // peopleFilter = peopleFilter.marksContains(markContains3String);
    // peopleFilter = await isar1.personModels.filter().peopleFilter.findAll();
    peopleFiltered.addAll(await a.findAll());
    // peopleFiltered.addAll(peopleFilter.findAll());

    // peopleFiltered =
    //     await isar1!.personModels.where().limit(25).findAll();
    peopleList.addAll(peopleFiltered);
    print('PeopleController -> peopleList ${peopleList.length}');
    Get.toNamed(Routes.people);
  }
  */
}
