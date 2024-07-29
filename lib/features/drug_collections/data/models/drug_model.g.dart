// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDrugModelCollection on Isar {
  IsarCollection<DrugModel> get drugModels => this.collection();
}

const DrugModelSchema = CollectionSchema(
  name: r'DrugModel',
  id: 4929961659508556113,
  properties: {
    r'category': PropertySchema(
      id: 0,
      name: r'category',
      type: IsarType.string,
      enumMap: _DrugModelcategoryEnumValueMap,
    ),
    r'maxQuantity': PropertySchema(
      id: 1,
      name: r'maxQuantity',
      type: IsarType.long,
    ),
    r'minQuantity': PropertySchema(
      id: 2,
      name: r'minQuantity',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 4,
      name: r'quantity',
      type: IsarType.long,
    )
  },
  estimateSize: _drugModelEstimateSize,
  serialize: _drugModelSerialize,
  deserialize: _drugModelDeserialize,
  deserializeProp: _drugModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'drugCollection': LinkSchema(
      id: 3359786969122187693,
      name: r'drugCollection',
      target: r'DrugCollectionModel',
      single: false,
      linkName: r'drugs',
    )
  },
  embeddedSchemas: {},
  getId: _drugModelGetId,
  getLinks: _drugModelGetLinks,
  attach: _drugModelAttach,
  version: '3.1.0',
);

int _drugModelEstimateSize(
  DrugModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.category.name.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _drugModelSerialize(
  DrugModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.category.name);
  writer.writeLong(offsets[1], object.maxQuantity);
  writer.writeLong(offsets[2], object.minQuantity);
  writer.writeString(offsets[3], object.name);
  writer.writeLong(offsets[4], object.quantity);
}

DrugModel _drugModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DrugModel();
  object.category =
      _DrugModelcategoryValueEnumMap[reader.readStringOrNull(offsets[0])] ??
          Category.vials;
  object.id = id;
  object.maxQuantity = reader.readLong(offsets[1]);
  object.minQuantity = reader.readLong(offsets[2]);
  object.name = reader.readString(offsets[3]);
  object.quantity = reader.readLong(offsets[4]);
  return object;
}

P _drugModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_DrugModelcategoryValueEnumMap[reader.readStringOrNull(offset)] ??
          Category.vials) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _DrugModelcategoryEnumValueMap = {
  r'vials': r'vials',
  r'tabs': r'tabs',
  r'others': r'others',
};
const _DrugModelcategoryValueEnumMap = {
  r'vials': Category.vials,
  r'tabs': Category.tabs,
  r'others': Category.others,
};

Id _drugModelGetId(DrugModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _drugModelGetLinks(DrugModel object) {
  return [object.drugCollection];
}

void _drugModelAttach(IsarCollection<dynamic> col, Id id, DrugModel object) {
  object.id = id;
  object.drugCollection.attach(
      col, col.isar.collection<DrugCollectionModel>(), r'drugCollection', id);
}

extension DrugModelByIndex on IsarCollection<DrugModel> {
  Future<DrugModel?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  DrugModel? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<DrugModel?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<DrugModel?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'name', values);
  }

  Future<Id> putByName(DrugModel object) {
    return putByIndex(r'name', object);
  }

  Id putByNameSync(DrugModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByName(List<DrugModel> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<Id> putAllByNameSync(List<DrugModel> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension DrugModelQueryWhereSort
    on QueryBuilder<DrugModel, DrugModel, QWhere> {
  QueryBuilder<DrugModel, DrugModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DrugModelQueryWhere
    on QueryBuilder<DrugModel, DrugModel, QWhereClause> {
  QueryBuilder<DrugModel, DrugModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<DrugModel, DrugModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<DrugModel, DrugModel, QAfterWhereClause> nameEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterWhereClause> nameNotEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DrugModelQueryFilter
    on QueryBuilder<DrugModel, DrugModel, QFilterCondition> {
  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> categoryEqualTo(
    Category value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> categoryGreaterThan(
    Category value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> categoryLessThan(
    Category value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> categoryBetween(
    Category lower,
    Category upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> categoryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition>
      categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> maxQuantityEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition>
      maxQuantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> maxQuantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> maxQuantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxQuantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> minQuantityEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition>
      minQuantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> minQuantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> minQuantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minQuantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameContains(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> quantityEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> quantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> quantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> quantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DrugModelQueryObject
    on QueryBuilder<DrugModel, DrugModel, QFilterCondition> {}

extension DrugModelQueryLinks
    on QueryBuilder<DrugModel, DrugModel, QFilterCondition> {
  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition> drugCollection(
      FilterQuery<DrugCollectionModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'drugCollection');
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition>
      drugCollectionLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'drugCollection', length, true, length, true);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition>
      drugCollectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'drugCollection', 0, true, 0, true);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition>
      drugCollectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'drugCollection', 0, false, 999999, true);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition>
      drugCollectionLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'drugCollection', 0, true, length, include);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition>
      drugCollectionLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'drugCollection', length, include, 999999, true);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterFilterCondition>
      drugCollectionLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'drugCollection', lower, includeLower, upper, includeUpper);
    });
  }
}

extension DrugModelQuerySortBy on QueryBuilder<DrugModel, DrugModel, QSortBy> {
  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByMaxQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxQuantity', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByMaxQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxQuantity', Sort.desc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByMinQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minQuantity', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByMinQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minQuantity', Sort.desc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }
}

extension DrugModelQuerySortThenBy
    on QueryBuilder<DrugModel, DrugModel, QSortThenBy> {
  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByMaxQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxQuantity', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByMaxQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxQuantity', Sort.desc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByMinQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minQuantity', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByMinQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minQuantity', Sort.desc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }
}

extension DrugModelQueryWhereDistinct
    on QueryBuilder<DrugModel, DrugModel, QDistinct> {
  QueryBuilder<DrugModel, DrugModel, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QDistinct> distinctByMaxQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxQuantity');
    });
  }

  QueryBuilder<DrugModel, DrugModel, QDistinct> distinctByMinQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minQuantity');
    });
  }

  QueryBuilder<DrugModel, DrugModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DrugModel, DrugModel, QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }
}

extension DrugModelQueryProperty
    on QueryBuilder<DrugModel, DrugModel, QQueryProperty> {
  QueryBuilder<DrugModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DrugModel, Category, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<DrugModel, int, QQueryOperations> maxQuantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxQuantity');
    });
  }

  QueryBuilder<DrugModel, int, QQueryOperations> minQuantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minQuantity');
    });
  }

  QueryBuilder<DrugModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DrugModel, int, QQueryOperations> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }
}
