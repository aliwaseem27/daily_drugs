import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/enums.dart';
import '../../../domain/entities/drug.dart';


part 'drugs_order_event.dart';
part 'drugs_order_state.dart';
part 'drugs_order_bloc.freezed.dart';

class DrugsOrderBloc extends Bloc<DrugsOrderEvent, DrugsOrderState> {
  DrugsOrderBloc() : super(const DrugsOrderState.initial()) {
    on<_LoadDrugs>((event, emit) {
      emit(const DrugsOrderState.loading());

      final List<Drug> drugs = [
        Drug(name: 'Paracetamol v.', category: Category.vials, quantity: 6),
        Drug(name: 'Sevelamir tab.', category: Category.tabs, quantity: 120, isSelected: false),
        Drug(name: 'Calcium tab.', category: Category.tabs, quantity: 60, isSelected: true),
        Drug(name: 'Fucidin Cream', category: Category.others, quantity: 24, isSelected: true),
      ];
      
      if (drugs.isEmpty) {
        emit(const DrugsOrderState.error(message: "No drugs"));
      } else {
        emit(DrugsOrderState.loaded(drugs: drugs));
      }
    });
  }
}
