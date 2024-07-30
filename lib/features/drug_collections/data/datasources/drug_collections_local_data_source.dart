import 'package:daily_drugs/features/drug_collections/data/models/drug_collection_model.dart';
import 'package:daily_drugs/main.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../../../core/enums/enums.dart';
import '../../domain/entities/drug.dart';
import '../../domain/entities/drug_collection.dart';

@injectable
class DrugCollectionsLocalDataSource {
  Future<List<DrugCollectionModel>> getDrugCollections() {
    return isar.drugCollectionModels.where().findAll();
  }

  Future<void> addDrugCollection(DrugCollectionModel collectionModel) async {
    return await isar.writeTxn(() async {
      await isar.drugCollectionModels.put(collectionModel);
    });
  }

  Future<void> deleteDrugCollection(int index) async {
    return await isar.writeTxn(() async {
      await isar.drugCollectionModels.delete(index);
    });
  }
}
