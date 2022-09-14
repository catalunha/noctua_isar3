// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetPersonModelCollection on Isar {
  IsarCollection<PersonModel> get personModels => this.collection();
}

const PersonModelSchema = CollectionSchema(
  name: r'PersonModel',
  id: -4430843621390741319,
  properties: {
    r'alias': PropertySchema(
      id: 0,
      name: r'alias',
      type: IsarType.stringList,
    ),
    r'birthday': PropertySchema(
      id: 1,
      name: r'birthday',
      type: IsarType.dateTime,
    ),
    r'cpf': PropertySchema(
      id: 2,
      name: r'cpf',
      type: IsarType.string,
    ),
    r'groups': PropertySchema(
      id: 3,
      name: r'groups',
      type: IsarType.stringList,
    ),
    r'hashCode': PropertySchema(
      id: 4,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'history': PropertySchema(
      id: 5,
      name: r'history',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 6,
      name: r'id',
      type: IsarType.string,
    ),
    r'laws': PropertySchema(
      id: 7,
      name: r'laws',
      type: IsarType.stringList,
    ),
    r'marks': PropertySchema(
      id: 8,
      name: r'marks',
      type: IsarType.string,
    ),
    r'mother': PropertySchema(
      id: 9,
      name: r'mother',
      type: IsarType.string,
    ),
    r'motherWords': PropertySchema(
      id: 10,
      name: r'motherWords',
      type: IsarType.stringList,
    ),
    r'name': PropertySchema(
      id: 11,
      name: r'name',
      type: IsarType.string,
    ),
    r'nameWords': PropertySchema(
      id: 12,
      name: r'nameWords',
      type: IsarType.stringList,
    ),
    r'photoByte': PropertySchema(
      id: 13,
      name: r'photoByte',
      type: IsarType.byteList,
    ),
    r'photoUrl': PropertySchema(
      id: 14,
      name: r'photoUrl',
      type: IsarType.string,
    )
  },
  estimateSize: _personModelEstimateSize,
  serializeNative: _personModelSerializeNative,
  deserializeNative: _personModelDeserializeNative,
  deserializePropNative: _personModelDeserializePropNative,
  serializeWeb: _personModelSerializeWeb,
  deserializeWeb: _personModelDeserializeWeb,
  deserializePropWeb: _personModelDeserializePropWeb,
  idName: r'idIsar',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _personModelGetId,
  getLinks: _personModelGetLinks,
  attach: _personModelAttach,
  version: '3.0.0-dev.14',
);

int _personModelEstimateSize(
  PersonModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.alias;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.cpf;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.groups;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.history;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.laws;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.marks;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mother;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.motherWords;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.nameWords;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.photoByte;
    if (value != null) {
      bytesCount += 3 + value.length;
    }
  }
  {
    final value = object.photoUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

int _personModelSerializeNative(
  PersonModel object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.alias);
  writer.writeDateTime(offsets[1], object.birthday);
  writer.writeString(offsets[2], object.cpf);
  writer.writeStringList(offsets[3], object.groups);
  writer.writeLong(offsets[4], object.hashCode);
  writer.writeString(offsets[5], object.history);
  writer.writeString(offsets[6], object.id);
  writer.writeStringList(offsets[7], object.laws);
  writer.writeString(offsets[8], object.marks);
  writer.writeString(offsets[9], object.mother);
  writer.writeStringList(offsets[10], object.motherWords);
  writer.writeString(offsets[11], object.name);
  writer.writeStringList(offsets[12], object.nameWords);
  writer.writeByteList(offsets[13], object.photoByte);
  writer.writeString(offsets[14], object.photoUrl);
  return writer.usedBytes;
}

PersonModel _personModelDeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PersonModel(
    alias: reader.readStringList(offsets[0]),
    birthday: reader.readDateTimeOrNull(offsets[1]),
    cpf: reader.readStringOrNull(offsets[2]),
    groups: reader.readStringList(offsets[3]),
    history: reader.readStringOrNull(offsets[5]),
    id: reader.readStringOrNull(offsets[6]),
    idIsar: id,
    laws: reader.readStringList(offsets[7]),
    marks: reader.readStringOrNull(offsets[8]),
    mother: reader.readStringOrNull(offsets[9]),
    name: reader.readStringOrNull(offsets[11]),
    photoUrl: reader.readStringOrNull(offsets[14]),
  );
  object.motherWords = reader.readStringList(offsets[10]);
  object.nameWords = reader.readStringList(offsets[12]);
  object.photoByte = reader.readByteList(offsets[13]);
  return object;
}

P _personModelDeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringList(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringList(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringList(offset)) as P;
    case 13:
      return (reader.readByteList(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _personModelSerializeWeb(
    IsarCollection<PersonModel> collection, PersonModel object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

PersonModel _personModelDeserializeWeb(
    IsarCollection<PersonModel> collection, Object jsObj) {
  /*final object = PersonModel(alias: (IsarNative.jsObjectGet(jsObj, r'alias') as List?)?.map((e) => e ?? '').toList().cast<String>() ,birthday: IsarNative.jsObjectGet(jsObj, r'birthday') != null ? DateTime.fromMillisecondsSinceEpoch(IsarNative.jsObjectGet(jsObj, r'birthday') as int, isUtc: true).toLocal() : null,cpf: IsarNative.jsObjectGet(jsObj, r'cpf') ,groups: (IsarNative.jsObjectGet(jsObj, r'groups') as List?)?.map((e) => e ?? '').toList().cast<String>() ,history: IsarNative.jsObjectGet(jsObj, r'history') ,id: IsarNative.jsObjectGet(jsObj, r'id') ,idIsar: IsarNative.jsObjectGet(jsObj, r'idIsar') ,laws: (IsarNative.jsObjectGet(jsObj, r'laws') as List?)?.map((e) => e ?? '').toList().cast<String>() ,marks: IsarNative.jsObjectGet(jsObj, r'marks') ,mother: IsarNative.jsObjectGet(jsObj, r'mother') ,name: IsarNative.jsObjectGet(jsObj, r'name') ,photoUrl: IsarNative.jsObjectGet(jsObj, r'photoUrl') ,);object.motherWords = (IsarNative.jsObjectGet(jsObj, r'motherWords') as List?)?.map((e) => e ?? '').toList().cast<String>() ;object.nameWords = (IsarNative.jsObjectGet(jsObj, r'nameWords') as List?)?.map((e) => e ?? '').toList().cast<String>() ;object.photoByte = (IsarNative.jsObjectGet(jsObj, r'photoByte') as List?)?.map((e) => e ?? 0).toList().cast<int>() ;*/
  //return object;
  throw UnimplementedError();
}

P _personModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _personModelGetId(PersonModel object) {
  return object.idIsar ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _personModelGetLinks(PersonModel object) {
  return [];
}

void _personModelAttach(
    IsarCollection<dynamic> col, Id id, PersonModel object) {
  object.idIsar = id;
}

extension PersonModelQueryWhereSort
    on QueryBuilder<PersonModel, PersonModel, QWhere> {
  QueryBuilder<PersonModel, PersonModel, QAfterWhere> anyIdIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PersonModelQueryWhere
    on QueryBuilder<PersonModel, PersonModel, QWhereClause> {
  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> idIsarEqualTo(
      int idIsar) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idIsar,
        upper: idIsar,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> idIsarNotEqualTo(
      int idIsar) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idIsar, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idIsar, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idIsar, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idIsar, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> idIsarGreaterThan(
      int idIsar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idIsar, includeLower: include),
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> idIsarLessThan(
      int idIsar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idIsar, includeUpper: include),
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterWhereClause> idIsarBetween(
    int lowerIdIsar,
    int upperIdIsar, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdIsar,
        includeLower: includeLower,
        upper: upperIdIsar,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PersonModelQueryFilter
    on QueryBuilder<PersonModel, PersonModel, QFilterCondition> {
  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> aliasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'alias',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'alias',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alias',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'alias',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alias',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'alias',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> aliasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      aliasLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      birthdayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'birthday',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      birthdayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'birthday',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> birthdayEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthday',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      birthdayGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthday',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      birthdayLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthday',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> birthdayBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthday',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cpf',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cpf',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cpf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cpf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cpf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cpf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cpf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cpf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cpf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cpf',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> cpfIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cpf',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      cpfIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cpf',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> groupsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groups',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groups',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groups',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groups',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groups',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groups',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groups',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      groupsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      historyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'history',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      historyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'history',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> historyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      historyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> historyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> historyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'history',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      historyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> historyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> historyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> historyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'history',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      historyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'history',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      historyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'history',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idIsarIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idIsar',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      idIsarIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idIsar',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idIsarEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idIsar',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      idIsarGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idIsar',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idIsarLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idIsar',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> idIsarBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idIsar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> lawsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'laws',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'laws',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laws',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'laws',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'laws',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'laws',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'laws',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'laws',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'laws',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'laws',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laws',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'laws',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'laws',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> lawsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'laws',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'laws',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'laws',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'laws',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      lawsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'laws',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> marksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'marks',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      marksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'marks',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> marksEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      marksGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'marks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> marksLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'marks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> marksBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'marks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> marksStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'marks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> marksEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'marks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> marksContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'marks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> marksMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'marks',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> marksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'marks',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      marksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'marks',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> motherIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mother',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mother',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> motherEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> motherLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> motherBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mother',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> motherEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> motherContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mother',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> motherMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mother',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mother',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mother',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'motherWords',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'motherWords',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motherWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'motherWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'motherWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'motherWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'motherWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'motherWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'motherWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'motherWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motherWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'motherWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'motherWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'motherWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'motherWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'motherWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'motherWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      motherWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'motherWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nameWords',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nameWords',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameWords',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameWords',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameWords',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameWords',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nameWords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nameWords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nameWords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nameWords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nameWords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      nameWordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nameWords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photoByte',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photoByte',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoByte',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoByte',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoByte',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoByte',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'photoByte',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'photoByte',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'photoByte',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'photoByte',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'photoByte',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoByteLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'photoByte',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photoUrl',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photoUrl',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> photoUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> photoUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition> photoUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photoUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterFilterCondition>
      photoUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photoUrl',
        value: '',
      ));
    });
  }
}

extension PersonModelQueryObject
    on QueryBuilder<PersonModel, PersonModel, QFilterCondition> {}

extension PersonModelQueryLinks
    on QueryBuilder<PersonModel, PersonModel, QFilterCondition> {}

extension PersonModelQuerySortBy
    on QueryBuilder<PersonModel, PersonModel, QSortBy> {
  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByBirthday() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthday', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByBirthdayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthday', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByCpf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cpf', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByCpfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cpf', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByHistory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'history', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByHistoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'history', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByMarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marks', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByMarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marks', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByMother() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mother', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByMotherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mother', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByPhotoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoUrl', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> sortByPhotoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoUrl', Sort.desc);
    });
  }
}

extension PersonModelQuerySortThenBy
    on QueryBuilder<PersonModel, PersonModel, QSortThenBy> {
  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByBirthday() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthday', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByBirthdayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthday', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByCpf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cpf', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByCpfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cpf', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByHistory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'history', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByHistoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'history', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByIdIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIsar', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByIdIsarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIsar', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByMarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marks', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByMarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'marks', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByMother() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mother', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByMotherDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mother', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByPhotoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoUrl', Sort.asc);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QAfterSortBy> thenByPhotoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoUrl', Sort.desc);
    });
  }
}

extension PersonModelQueryWhereDistinct
    on QueryBuilder<PersonModel, PersonModel, QDistinct> {
  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByAlias() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alias');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByBirthday() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthday');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByCpf(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cpf', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByGroups() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groups');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByHistory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'history', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByLaws() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'laws');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByMarks(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'marks', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByMother(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mother', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByMotherWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'motherWords');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByNameWords() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameWords');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByPhotoByte() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photoByte');
    });
  }

  QueryBuilder<PersonModel, PersonModel, QDistinct> distinctByPhotoUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photoUrl', caseSensitive: caseSensitive);
    });
  }
}

extension PersonModelQueryProperty
    on QueryBuilder<PersonModel, PersonModel, QQueryProperty> {
  QueryBuilder<PersonModel, int, QQueryOperations> idIsarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idIsar');
    });
  }

  QueryBuilder<PersonModel, List<String>?, QQueryOperations> aliasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alias');
    });
  }

  QueryBuilder<PersonModel, DateTime?, QQueryOperations> birthdayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthday');
    });
  }

  QueryBuilder<PersonModel, String?, QQueryOperations> cpfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cpf');
    });
  }

  QueryBuilder<PersonModel, List<String>?, QQueryOperations> groupsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groups');
    });
  }

  QueryBuilder<PersonModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<PersonModel, String?, QQueryOperations> historyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'history');
    });
  }

  QueryBuilder<PersonModel, String?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PersonModel, List<String>?, QQueryOperations> lawsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'laws');
    });
  }

  QueryBuilder<PersonModel, String?, QQueryOperations> marksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'marks');
    });
  }

  QueryBuilder<PersonModel, String?, QQueryOperations> motherProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mother');
    });
  }

  QueryBuilder<PersonModel, List<String>?, QQueryOperations>
      motherWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'motherWords');
    });
  }

  QueryBuilder<PersonModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PersonModel, List<String>?, QQueryOperations>
      nameWordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameWords');
    });
  }

  QueryBuilder<PersonModel, List<int>?, QQueryOperations> photoByteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photoByte');
    });
  }

  QueryBuilder<PersonModel, String?, QQueryOperations> photoUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photoUrl');
    });
  }
}
