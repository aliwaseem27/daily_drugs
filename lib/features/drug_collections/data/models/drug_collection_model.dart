import 'package:isar/isar.dart';

import 'drug_model.dart';

part 'drug_collection_model.g.dart';

@collection
class DrugCollectionModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String name;

  late String description;

   final drugs = IsarLinks<DrugModel>();
}
