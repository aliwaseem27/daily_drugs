import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drugs_order_event.dart';
part 'drugs_order_state.dart';
part 'drugs_order_bloc.freezed.dart';

class DrugsOrderBloc extends Bloc<DrugsOrderEvent, DrugsOrderState> {
  DrugsOrderBloc() : super(const DrugsOrderState.initial()) {
    on<DrugsOrderEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
