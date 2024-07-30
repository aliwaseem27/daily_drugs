import 'package:injectable/injectable.dart';

import '../../data/models/drug_collection_model.dart';

import '../repositories/drug_collection_repo.dart';

@injectable
class AddNewCollection {
  final DrugCollectionRepo collectionsRepository;

  AddNewCollection({required this.collectionsRepository});

  Future<void> call(DrugCollectionModel collection) async {
    return await collectionsRepository.addCollection(collection);
  }
}
