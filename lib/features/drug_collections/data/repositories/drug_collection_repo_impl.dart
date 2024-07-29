import 'dart:ffi';

import 'package:daily_drugs/core/enums/enums.dart';
import 'package:daily_drugs/features/drug_collections/data/datasources/drug_collections_local_data_source.dart';
import 'package:daily_drugs/features/drug_collections/domain/repositories/drug_collection_repo.dart';
import 'package:daily_drugs/features/drug_collections/domain/entities/drug.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/drug_collection.dart';
import '../models/drug_collection_model.dart';
import '../models/drug_model.dart';

@LazySingleton(as: DrugCollectionRepo)
class DrugCollectionRepoImpl implements DrugCollectionRepo {
  final DrugCollectionsLocalDataSource localDataSource;

  DrugCollectionRepoImpl({required this.localDataSource});

  @override
  Future<void> addCollection(DrugCollection collection) async {
    final DrugCollectionModel collectionModel = DrugCollectionModel()
      ..name = collection.name
      ..description = collection.description;
    localDataSource.addDrugCollection(collectionModel);
  }

  @override
  Future<void> addDrugToCollection(int collectionId, Drug drug) {
    // TODO: implement addDrugToCollection
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCollection(DrugCollection collection) {
    // TODO: implement deleteCollection
    throw UnimplementedError();
  }

  @override
  Future<void> deleteDrugFromCollection(int collectionId, Drug drug) {
    // TODO: implement deleteDrugFromCollection
    throw UnimplementedError();
  }

  @override
  Future<void> editDrugInCollection(int collectionId, Drug drug) {
    // TODO: implement editDrugInCollection
    throw UnimplementedError();
  }

  @override
  Future<List<DrugCollection>> getAllCollections() async {
    List<DrugCollection> drugCollections = [];
    final drugModelCollections = await localDataSource.getDrugCollections();
    for (var element in drugModelCollections) {
      var collection = DrugCollection(
        id: element.id,
        name: element.name,
        description: element.description,
        drugs: element.drugs
            .map((e) => Drug(
                  id: e.id,
                  name: e.name,
                  quantity: e.quantity,
                  minQuantity: e.minQuantity,
                  maxQuantity: e.maxQuantity,
                  category: e.category,
                ))
            .toList(),
      );
      drugCollections.add(collection);
    }
    return drugCollections;
  }

  @override
  Future<DrugCollection> getCollectionById(int id) {
    // TODO: implement getCollectionById
    throw UnimplementedError();
  }

  @override
  Future<void> updateCollection(DrugCollection collection) {
    // TODO: implement updateCollection
    throw UnimplementedError();
  }
}
