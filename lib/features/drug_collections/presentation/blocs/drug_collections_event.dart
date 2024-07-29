part of 'drug_collections_bloc.dart';

@freezed
class DrugCollectionsEvent with _$DrugCollectionsEvent {
  const factory DrugCollectionsEvent.started() = _Started;

  const factory DrugCollectionsEvent.getDrugCollections() = _GetDrugCollections;

  const factory DrugCollectionsEvent.addDrugCollection(DrugCollection collection) = _AddDrugCollection;
}
