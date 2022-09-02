import 'package:isar/isar.dart';

part 'contact_model.g.dart';

@Collection()
class ContactModel {
  Id id = 0;
  late String name;

  @override
  String toString() => 'ContactModel(id: $id, name: $name)';
}
