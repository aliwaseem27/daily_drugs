part of 'drug_collections_bloc.dart';

@freezed
class DrugCollectionsState with _$DrugCollectionsState {
  const factory DrugCollectionsState.initial() = _Initial;

  const factory DrugCollectionsState.loading() = _Loading;

  const factory DrugCollectionsState.loaded({required List<DrugCollection> drugCollections}) = _Loaded;

  const factory DrugCollectionsState.error({required String message}) = _Error;
}
