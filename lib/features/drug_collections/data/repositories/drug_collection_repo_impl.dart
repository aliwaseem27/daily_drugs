import 'package:daily_drugs/core/enums/enums.dart';
import 'package:daily_drugs/features/drug_collections/data/datasources/drug_collections_local_data_source.dart';
import 'package:daily_drugs/features/drug_collections/domain/entities/drug_collection.dart';
import 'package:daily_drugs/features/drug_collections/domain/repositories/drug_collection_repo.dart';
import 'package:daily_drugs/features/new_order/domain/entities/drug.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DrugCollectionRepo)
class DrugCollectionRepoImpl implements DrugCollectionRepo {
  final DrugCollectionsLocalDataSource localDataSource;

  DrugCollectionRepoImpl({required this.localDataSource});

  @override
  Future<void> addCollection(DrugCollection collection) {
    // TODO: implement addCollection
    throw UnimplementedError();
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
  Future<List<DrugCollection>> getAllCollections() {
    return localDataSource.getDrugCollections();
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
