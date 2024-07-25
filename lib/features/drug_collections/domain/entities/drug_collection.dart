import '../../../new_order/domain/entities/drug.dart';

class DrugCollection {
  final String id;
  final String name;
  final String description;
  final List<Drug> drugs;

  DrugCollection({
    required this.id,
    required this.name,
    this.description = "",
    required this.drugs,
  });
}
