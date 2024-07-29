import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/enums.dart';
import '../../../../drug_collections/domain/entities/drug.dart';


part 'drugs_order_event.dart';
part 'drugs_order_state.dart';
part 'drugs_order_bloc.freezed.dart';

class DrugsOrderBloc extends Bloc<DrugsOrderEvent, DrugsOrderState> {
  DrugsOrderBloc() : super(const DrugsOrderState.initial()) {
    on<_LoadDrugs>((event, emit) {
      emit(const DrugsOrderState.loading());

      final List<Drug> drugs = [
        Drug(
          id: 123,
          name: "Paracetamol",
          quantity: 12,
          minQuantity: 0,
          maxQuantity: 20,
          category: Category.vials,
        ),
      ];
      
      if (drugs.isEmpty) {
        emit(const DrugsOrderState.error(message: "No drugs"));
      } else {
        emit(DrugsOrderState.loaded(drugs: drugs));
      }
    });
  }
}
