import 'package:injectable/injectable.dart';

import '../../../../core/enums/enums.dart';
import '../../domain/entities/drug.dart';
import '../../domain/entities/drug_collection.dart';

@injectable
class DrugCollectionsLocalDataSource {
  Future<List<DrugCollection>> getDrugCollections() {
    return Future(() => [
          DrugCollection(
            id: 123,
            name: 'Collection 1',
            description: 'Collection 1 description',
            drugs: [
              Drug(
                id: 123,
                name: "Paracetamol",
                quantity: 12,
                minQuantity: 0,
                maxQuantity: 20,
                category: Category.vials,
              ),
            ],
          ),
        ]);
  }
}
