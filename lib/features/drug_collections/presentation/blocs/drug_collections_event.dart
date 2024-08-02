part of 'drug_collections_bloc.dart';

@freezed
class DrugCollectionsEvent with _$DrugCollectionsEvent {
  const factory DrugCollectionsEvent.started() = _Started;

  const factory DrugCollectionsEvent.getDrugCollections() = _GetDrugCollections;

  const factory DrugCollectionsEvent.addDrugCollection(String name, String description) = _AddDrugCollection;

  const factory DrugCollectionsEvent.deleteDrugCollection(int index) = _DeleteDrugCollection;
}
