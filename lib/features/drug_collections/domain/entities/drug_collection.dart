// import '../../data/models/drug_collection_model.dart';
// import 'drug.dart';
//
// class DrugCollection {
//   late int? id;
//   final String name;
//   final String description;
//   final List<Drug> drugs;
//
//   DrugCollection({
//     this.id,
//     required this.name,
//     required this.description,
//     required this.drugs,
//   });
//
//   factory DrugCollection.fromModel(DrugCollectionModel model) {
//     return DrugCollection(
//       id: model.id,
//       name: model.name,
//       description: model.description,
//       drugs: model.drugs.map((e) => Drug.fromModel(e)).toList(),
//     );
//   }
//
//   DrugCollectionModel toModel() {
//     return DrugCollectionModel()
//       ..name = name
//       ..description = description;
//   }
// }
