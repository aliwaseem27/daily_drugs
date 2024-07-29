import 'drug.dart';

class DrugCollection {
  final int id;
  final String name;
  final String description;
  final List<Drug> drugs;

  DrugCollection({
    required this.id,
    required this.name,
    required this.description,
    required this.drugs,
  });
}
