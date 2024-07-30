import 'package:daily_drugs/features/drug_collections/data/models/drug_model.dart';

import '../../../../core/enums/enums.dart';

class Drug {
  late int? id;
  String name;
  int quantity;
  int minQuantity;
  int maxQuantity;
  Category category;

  Drug({
    this.id,
    required this.name,
    required this.quantity,
    required this.minQuantity,
    required this.maxQuantity,
    required this.category,
  });

  factory Drug.fromModel(DrugModel drugModel) {
    return Drug(
      id: drugModel.id,
      name: drugModel.name,
      quantity: drugModel.quantity,
      minQuantity: drugModel.minQuantity,
      maxQuantity: drugModel.maxQuantity,
      category: drugModel.category,
    );
  }

  DrugModel toModel() {
    return DrugModel()
      ..name = name
      ..quantity = quantity
      ..minQuantity = minQuantity
      ..maxQuantity = maxQuantity
      ..category = category;
  }
}
