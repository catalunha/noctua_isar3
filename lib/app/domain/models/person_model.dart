import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

part 'person_model.g.dart';

@Collection()
class PersonModel {
  Id? idIsar;
  final String? id;
  final String? name;
  final String? cpf;
  final String? mother;
  final String? marks;
  final String? history;
  final DateTime? birthday;
  final List<String>? alias;
  List<String>? nameWords;
  List<String>? motherWords;
  final List<String>? laws;
  final List<String>? groups;
  final String? photoUrl;
  List<byte>? photoByte;
  PersonModel({
    this.idIsar,
    this.id,
    this.name,
    // this.nameWords,
    this.cpf,
    this.birthday,
    this.alias,
    this.mother,
    // this.motherWords,
    this.marks,
    this.history,
    this.laws,
    this.groups,
    this.photoUrl,
    // this.photoByte,
  });

  PersonModel copyWith({
    Id? idIsar,
    String? id,
    String? name,
    List<String>? nameWords,
    String? cpf,
    DateTime? birthday,
    List<String>? alias,
    String? mother,
    List<String>? motherWords,
    String? marks,
    String? history,
    List<String>? laws,
    List<String>? groups,
    String? photoUrl,
    List<byte>? photoByte,
  }) {
    return PersonModel(
      idIsar: idIsar ?? this.idIsar,
      id: id ?? this.id,
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
      birthday: birthday ?? this.birthday,
      alias: alias ?? this.alias,
      mother: mother ?? this.mother,
      marks: marks ?? this.marks,
      history: history ?? this.history,
      laws: laws ?? this.laws,
      groups: groups ?? this.groups,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    if (name != null) {
      result.addAll({'name': name});
    }

    if (cpf != null) {
      result.addAll({'cpf': cpf});
    }
    if (birthday != null) {
      result.addAll({'birthday': birthday!.toIso8601String()});
    }
    if (alias != null) {
      result.addAll({'alias': alias});
    }
    if (mother != null) {
      result.addAll({'mother': mother});
    }

    if (marks != null) {
      result.addAll({'marks': marks});
    }
    if (history != null) {
      result.addAll({'history': history});
    }
    if (laws != null) {
      result.addAll({'laws': laws});
    }
    if (groups != null) {
      result.addAll({'groups': groups});
    }
    if (photoUrl != null) {
      result.addAll({'photoUrl': photoUrl});
    }

    return result;
  }

  factory PersonModel.fromMap(Map<String, dynamic> map) {
    return PersonModel(
      id: map['id'],
      name: map['name'],
      cpf: map['cpf'],
      birthday:
          map['birthday'] != null ? DateTime.parse(map['birthday']) : null,
      alias: List<String>.from(map['alias']),
      mother: map['mother'],
      marks: map['marks'],
      history: map['history'],
      laws: map['laws'] != null ? List<String>.from(map['laws']) : null,
      groups: map['groups'] != null ? List<String>.from(map['groups']) : null,
      photoUrl: map['photoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonModel.fromJson(String source) =>
      PersonModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PersonModel(idIsar: $idIsar, id: $id, name: $name, nameWords: $nameWords, cpf: $cpf, birthday: $birthday, alias: $alias, mother: $mother, motherWords: $motherWords, marks: $marks, history: $history, laws: $laws, groups: $groups, photoUrl: $photoUrl, photoByte: $photoByte)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PersonModel &&
        other.idIsar == idIsar &&
        other.id == id &&
        other.name == name &&
        listEquals(other.nameWords, nameWords) &&
        other.cpf == cpf &&
        other.birthday == birthday &&
        listEquals(other.alias, alias) &&
        other.mother == mother &&
        listEquals(other.motherWords, motherWords) &&
        other.marks == marks &&
        other.history == history &&
        listEquals(other.laws, laws) &&
        listEquals(other.groups, groups) &&
        other.photoUrl == photoUrl &&
        listEquals(other.photoByte, photoByte);
  }

  @override
  int get hashCode {
    return idIsar.hashCode ^
        id.hashCode ^
        name.hashCode ^
        nameWords.hashCode ^
        cpf.hashCode ^
        birthday.hashCode ^
        alias.hashCode ^
        mother.hashCode ^
        motherWords.hashCode ^
        marks.hashCode ^
        history.hashCode ^
        laws.hashCode ^
        groups.hashCode ^
        photoUrl.hashCode ^
        photoByte.hashCode;
  }
}
