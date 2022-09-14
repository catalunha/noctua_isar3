import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

part 'category_model.g.dart';

@Collection()
class CategoryModel {
  Id? isarId;
  final String id;
  final String name;
  final String? parent;
  final List<String> filter;

  String ordem = '';
  CategoryModel({
    this.isarId,
    required this.id,
    required this.name,
    this.parent,
    required this.filter,
    required this.ordem,
  });

  CategoryModel copyWith({
    Id? isarId,
    String? id,
    String? name,
    String? parent,
    List<String>? filter,
    String? ordem,
  }) {
    return CategoryModel(
      isarId: isarId ?? this.isarId,
      id: id ?? this.id,
      name: name ?? this.name,
      parent: parent ?? this.parent,
      filter: filter ?? this.filter,
      ordem: ordem ?? this.ordem,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    if (parent != null) {
      result.addAll({'parent': parent});
    }
    result.addAll({'filter': filter});
    result.addAll({'ordem': ordem});

    return result;
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      parent: map['parent'],
      filter: List<String>.from(map['filter']),
      ordem: map['ordem'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CategoryModel(isarId: $isarId, id: $id, name: $name, parent: $parent, filter: $filter, ordem: $ordem)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryModel &&
        other.isarId == isarId &&
        other.id == id &&
        other.name == name &&
        other.parent == parent &&
        listEquals(other.filter, filter) &&
        other.ordem == ordem;
  }

  @override
  int get hashCode {
    return isarId.hashCode ^
        id.hashCode ^
        name.hashCode ^
        parent.hashCode ^
        filter.hashCode ^
        ordem.hashCode;
  }
}
