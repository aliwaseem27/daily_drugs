

import 'package:daily_drugs/features/drug_collections/data/models/drug_collection_model.dart';
import 'package:daily_drugs/features/drug_collections/data/models/drug_model.dart';

abstract class DrugCollectionRepo {
  Future<List<DrugCollectionModel>> getAllCollections();

  Future<DrugCollectionModel> getCollectionById(int id);

  Future<void> addCollection(DrugCollectionModel collection);

  Future<void> updateCollection(DrugCollectionModel collection);

  Future<void> deleteCollection(int index);

  Future<void> addDrugToCollection(int collectionId, DrugModel drug);

  Future<void> deleteDrugFromCollection(int collectionId, DrugModel drug);

  Future<void> editDrugInCollection(int collectionId, DrugModel drug);
}
