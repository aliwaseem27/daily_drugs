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
  Future<void> addCollection(DrugCollectionModel collection)  async {
     await localDataSource.addDrugCollection(collection);
  }

  @override
  Future<void> addDrugToCollection(int collectionId, DrugModel drug) {
    // TODO: implement addDrugToCollection
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCollection(int index) async {
    await localDataSource.deleteDrugCollection(index);
  }

  @override
  Future<void> deleteDrugFromCollection(int collectionId, DrugModel drug) {
    // TODO: implement deleteDrugFromCollection
    throw UnimplementedError();
  }

  @override
  Future<void> editDrugInCollection(int collectionId, DrugModel drug) {
    // TODO: implement editDrugInCollection
    throw UnimplementedError();
  }

  @override
  Future<List<DrugCollectionModel>> getAllCollections() async {
    // List<DrugCollectionModel> drugCollections = [];
    // final drugModelCollections = await localDataSource.getDrugCollections();
    // for (var element in drugModelCollections) {
    //   var collection = DrugCollection.fromModel(element);
    //   drugCollections.add(collection);
    // }
    // return drugCollections;
    return await localDataSource.getDrugCollections();
  }

  @override
  Future<DrugCollectionModel> getCollectionById(int id) {
    // TODO: implement getCollectionById
    throw UnimplementedError();
  }

  @override
  Future<void> updateCollection(DrugCollectionModel collection) {
    // TODO: implement updateCollection
    throw UnimplementedError();
  }
}
