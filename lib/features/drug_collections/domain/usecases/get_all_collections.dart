import 'package:injectable/injectable.dart';

import '../../data/models/drug_collection_model.dart';
import '../entities/drug_collection.dart';
import '../repositories/drug_collection_repo.dart';

@injectable
class GetAllCollections {
  final DrugCollectionRepo collectionsRepository;

  GetAllCollections({required this.collectionsRepository});

  Future<List<DrugCollectionModel>> call() async {
    return await collectionsRepository.getAllCollections();
  }
}
