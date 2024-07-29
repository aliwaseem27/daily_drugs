import 'package:injectable/injectable.dart';

import '../entities/drug_collection.dart';
import '../repositories/drug_collection_repo.dart';

@injectable
class AddNewCollection {
  final DrugCollectionRepo collectionsRepository;

  AddNewCollection({required this.collectionsRepository});

  Future<void> call(DrugCollection collection) async {
    return await collectionsRepository.addCollection(collection);
  }
}
