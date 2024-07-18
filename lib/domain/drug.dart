import 'enums.dart';

class Drug {
  String name;
  int quantity;
  bool isSelected;
  Category category;

  Drug({
    required this.name,
    required this.quantity,
    this.isSelected = false,
    required this.category,
  });
}
