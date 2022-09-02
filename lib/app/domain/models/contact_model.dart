import 'package:isar/isar.dart';
part 'contact_model.g.dart';

@Collection()
class ContactModel {
  int? id = Isar.autoIncrement;
  late String name;
}
