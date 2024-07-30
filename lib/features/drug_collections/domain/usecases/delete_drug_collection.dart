import 'package:injectable/injectable.dart';

import '../entities/drug_collection.dart';
import '../repositories/drug_collection_repo.dart';

@injectable
class DeleteDrugCollection {
  final DrugCollectionRepo collectionsRepository;

  DeleteDrugCollection({required this.collectionsRepository});

  Future<void> call(int index) async {
    return await collectionsRepository.deleteCollection(index);
  }
}
