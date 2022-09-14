import 'dart:convert';

import 'package:isar/isar.dart';

part 'contact_model.g.dart';

@Collection()
class ContactModel {
  // Id? id; //or Id id = Isar.autoIncrement;
  Id? isarId;
  String name;
  ContactModel({
    this.isarId,
    required this.name,
  });

  @override
  String toString() => 'ContactModel(isarId: $isarId, name: $name)';

  ContactModel copyWith({
    Id? isarId,
    String? name,
  }) {
    return ContactModel(
      isarId: isarId ?? this.isarId,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});

    return result;
  }

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactModel.fromJson(String source) =>
      ContactModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactModel &&
        other.isarId == isarId &&
        other.name == name;
  }

  @override
  int get hashCode => isarId.hashCode ^ name.hashCode;
}
