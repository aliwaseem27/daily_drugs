import 'package:injectable/injectable.dart';

import '../entities/drug_collection.dart';
import '../repositories/drug_collection_repo.dart';

@injectable
class GetAllCollections {
  final DrugCollectionRepo collectionsRepository;

  GetAllCollections({required this.collectionsRepository});

  Future<List<DrugCollection>> call() async {
    final collections = await collectionsRepository.getAllCollections();
    return collections;
  }
}
