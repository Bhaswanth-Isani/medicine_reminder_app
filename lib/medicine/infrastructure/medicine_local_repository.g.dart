// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_local_repository.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMedicineLocalRepositoryCollection on Isar {
  IsarCollection<MedicineLocalRepository> get medicineLocalRepositorys =>
      this.collection();
}

const MedicineLocalRepositorySchema = CollectionSchema(
  name: r'MedicineLocalRepository',
  id: -8017749670758826281,
  properties: {
    r'compartment': PropertySchema(
      id: 0,
      name: r'compartment',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'number': PropertySchema(
      id: 2,
      name: r'number',
      type: IsarType.long,
    ),
    r'time': PropertySchema(
      id: 3,
      name: r'time',
      type: IsarType.dateTimeList,
    ),
    r'userID': PropertySchema(
      id: 4,
      name: r'userID',
      type: IsarType.string,
    )
  },
  estimateSize: _medicineLocalRepositoryEstimateSize,
  serialize: _medicineLocalRepositorySerialize,
  deserialize: _medicineLocalRepositoryDeserialize,
  deserializeProp: _medicineLocalRepositoryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'user': LinkSchema(
      id: -7555564508894028977,
      name: r'user',
      target: r'AuthLocalClient',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _medicineLocalRepositoryGetId,
  getLinks: _medicineLocalRepositoryGetLinks,
  attach: _medicineLocalRepositoryAttach,
  version: '3.0.5',
);

int _medicineLocalRepositoryEstimateSize(
  MedicineLocalRepository object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.time.length * 8;
  bytesCount += 3 + object.userID.length * 3;
  return bytesCount;
}

void _medicineLocalRepositorySerialize(
  MedicineLocalRepository object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.compartment);
  writer.writeString(offsets[1], object.name);
  writer.writeLong(offsets[2], object.number);
  writer.writeDateTimeList(offsets[3], object.time);
  writer.writeString(offsets[4], object.userID);
}

MedicineLocalRepository _medicineLocalRepositoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MedicineLocalRepository();
  object.compartment = reader.readLong(offsets[0]);
  object.id = id;
  object.name = reader.readString(offsets[1]);
  object.number = reader.readLong(offsets[2]);
  object.time = reader.readDateTimeList(offsets[3]) ?? [];
  object.userID = reader.readString(offsets[4]);
  return object;
}

P _medicineLocalRepositoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTimeList(offset) ?? []) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _medicineLocalRepositoryGetId(MedicineLocalRepository object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _medicineLocalRepositoryGetLinks(
    MedicineLocalRepository object) {
  return [object.user];
}

void _medicineLocalRepositoryAttach(
    IsarCollection<dynamic> col, Id id, MedicineLocalRepository object) {
  object.id = id;
  object.user.attach(col, col.isar.collection<AuthLocalClient>(), r'user', id);
}

extension MedicineLocalRepositoryQueryWhereSort
    on QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QWhere> {
  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MedicineLocalRepositoryQueryWhere on QueryBuilder<
    MedicineLocalRepository, MedicineLocalRepository, QWhereClause> {
  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MedicineLocalRepositoryQueryFilter on QueryBuilder<
    MedicineLocalRepository, MedicineLocalRepository, QFilterCondition> {
  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> compartmentEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compartment',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> compartmentGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'compartment',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> compartmentLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'compartment',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> compartmentBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'compartment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> nameEqualTo(
    String value, {
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

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> nameGreaterThan(
    String value, {
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

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> nameLessThan(
    String value, {
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

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
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

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> numberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> numberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> numberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> numberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeElementEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeElementGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeElementLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeElementBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> timeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> userIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> userIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> userIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> userIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> userIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> userIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
          QAfterFilterCondition>
      userIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
          QAfterFilterCondition>
      userIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> userIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userID',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> userIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userID',
        value: '',
      ));
    });
  }
}

extension MedicineLocalRepositoryQueryObject on QueryBuilder<
    MedicineLocalRepository, MedicineLocalRepository, QFilterCondition> {}

extension MedicineLocalRepositoryQueryLinks on QueryBuilder<
    MedicineLocalRepository, MedicineLocalRepository, QFilterCondition> {
  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> user(FilterQuery<AuthLocalClient> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'user');
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository,
      QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'user', 0, true, 0, true);
    });
  }
}

extension MedicineLocalRepositoryQuerySortBy
    on QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QSortBy> {
  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      sortByCompartment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compartment', Sort.asc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      sortByCompartmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compartment', Sort.desc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      sortByUserID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userID', Sort.asc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      sortByUserIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userID', Sort.desc);
    });
  }
}

extension MedicineLocalRepositoryQuerySortThenBy on QueryBuilder<
    MedicineLocalRepository, MedicineLocalRepository, QSortThenBy> {
  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenByCompartment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compartment', Sort.asc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenByCompartmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compartment', Sort.desc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenByUserID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userID', Sort.asc);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QAfterSortBy>
      thenByUserIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userID', Sort.desc);
    });
  }
}

extension MedicineLocalRepositoryQueryWhereDistinct on QueryBuilder<
    MedicineLocalRepository, MedicineLocalRepository, QDistinct> {
  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QDistinct>
      distinctByCompartment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'compartment');
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QDistinct>
      distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QDistinct>
      distinctByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time');
    });
  }

  QueryBuilder<MedicineLocalRepository, MedicineLocalRepository, QDistinct>
      distinctByUserID({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userID', caseSensitive: caseSensitive);
    });
  }
}

extension MedicineLocalRepositoryQueryProperty on QueryBuilder<
    MedicineLocalRepository, MedicineLocalRepository, QQueryProperty> {
  QueryBuilder<MedicineLocalRepository, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MedicineLocalRepository, int, QQueryOperations>
      compartmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'compartment');
    });
  }

  QueryBuilder<MedicineLocalRepository, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<MedicineLocalRepository, int, QQueryOperations>
      numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<MedicineLocalRepository, List<DateTime>, QQueryOperations>
      timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }

  QueryBuilder<MedicineLocalRepository, String, QQueryOperations>
      userIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userID');
    });
  }
}