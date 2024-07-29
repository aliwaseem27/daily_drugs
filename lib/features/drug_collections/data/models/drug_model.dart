import 'package:isar/isar.dart';

import '../../../../core/enums/enums.dart';
import 'drug_collection_model.dart';

part 'drug_model.g.dart';

@collection
class DrugModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String name;

  late int quantity;
  late int minQuantity;
  late int maxQuantity;

  @Enumerated(EnumType.name)
  late Category category;

  @Backlink(to: "drugs")
  final drugCollection = IsarLinks<DrugCollectionModel>();
}
