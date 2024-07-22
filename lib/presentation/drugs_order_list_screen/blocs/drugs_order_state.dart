part of 'drugs_order_bloc.dart';

@freezed
class DrugsOrderState with _$DrugsOrderState {
  const factory DrugsOrderState.initial() = _Initial;
  const factory DrugsOrderState.loading() = _Loading;
  const factory DrugsOrderState.loaded({required List<Drug> drugs}) = _Loaded;
  const factory DrugsOrderState.error({required String message}) = _Error;
}
