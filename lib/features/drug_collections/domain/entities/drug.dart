import '../../../../core/enums/enums.dart';

class Drug {
  int id;
  String name;
  int quantity;
  int minQuantity;
  int maxQuantity;
  Category category;

  Drug({
    required this.id,
    required this.name,
    required this.quantity,
    required this.minQuantity,
    required this.maxQuantity,
    required this.category,
  });
}
