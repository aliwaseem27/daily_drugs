import 'package:injectable/injectable.dart';

import '../../../../core/enums/enums.dart';
import '../../../new_order/domain/entities/drug.dart';
import '../../domain/entities/drug_collection.dart';

@injectable
class DrugCollectionsLocalDataSource {
  Future<List<DrugCollection>> getDrugCollections() {
    return Future(() => [
      DrugCollection(id: "123", name: 'Collection 1', description: 'Collection 1 description', drugs: [
        Drug(name: 'Drug 1', quantity: 10, category: Category.vials),
        Drug(name: 'Drug 2', quantity: 5, category: Category.vials),
        Drug(name: 'Drug 3', quantity: 20, category: Category.vials),
      ]),
      DrugCollection(id: "123", name: 'Collection 2', description: 'Collection 2 description', drugs: [
        Drug(name: 'Drug 1', quantity: 10, category: Category.vials),
        Drug(name: 'Drug 2', quantity: 5, category: Category.vials),
        Drug(name: 'Drug 3', quantity: 20, category: Category.vials),
      ]),
      DrugCollection(id: "123", name: 'Collection 3', description: 'Collection 3 description', drugs: [
        Drug(name: 'Drug 1', quantity: 10, category: Category.vials),
        Drug(name: 'Drug 2', quantity: 5, category: Category.vials),
        Drug(name: 'Drug 3', quantity: 20, category: Category.vials),
      ]),
    ]);
  }
}