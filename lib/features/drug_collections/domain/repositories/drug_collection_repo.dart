import 'package:daily_drugs/features/new_order/domain/entities/drug.dart';
import 'package:injectable/injectable.dart';

import '../entities/drug_collection.dart';

abstract class DrugCollectionRepo {
  Future<List<DrugCollection>> getAllCollections();

  Future<DrugCollection> getCollectionById(int id);

  Future<void> addCollection(DrugCollection collection);

  Future<void> updateCollection(DrugCollection collection);

  Future<void> deleteCollection(DrugCollection collection);

  Future<void> addDrugToCollection(int collectionId, Drug drug);

  Future<void> deleteDrugFromCollection(int collectionId, Drug drug);

  Future<void> editDrugInCollection(int collectionId, Drug drug);
}
