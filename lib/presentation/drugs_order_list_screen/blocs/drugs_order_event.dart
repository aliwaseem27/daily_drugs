part of 'drugs_order_bloc.dart';

@freezed
class DrugsOrderEvent with _$DrugsOrderEvent {
  const factory DrugsOrderEvent.started() = _Started;
}
