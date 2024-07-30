import 'package:bloc/bloc.dart';
import 'package:daily_drugs/features/drug_collections/domain/usecases/add_new_collection.dart';
import 'package:daily_drugs/features/drug_collections/domain/usecases/get_all_collections.dart';
import 'package:daily_drugs/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/drug_collection_model.dart';
import '../../domain/entities/drug_collection.dart';
import '../../domain/usecases/delete_drug_collection.dart';

part 'drug_collections_event.dart';

part 'drug_collections_state.dart';

part 'drug_collections_bloc.freezed.dart';

@injectable
class DrugCollectionsBloc extends Bloc<DrugCollectionsEvent, DrugCollectionsState> {
  DrugCollectionsBloc() : super(const DrugCollectionsState.initial()) {
    on<_GetDrugCollections>((event, emit) async {
      emit(const DrugCollectionsState.loading());

      final result = await getIt<GetAllCollections>().call();

      if (result.isNotEmpty) {
        emit(DrugCollectionsState.loaded(drugCollections: result));
      } else {
        emit(const DrugCollectionsState.error(message: "there is no collections"));
      }
    });

    on<_AddDrugCollection>((event, emit) async {
      await getIt<AddNewCollection>().call(event.collection);
      print("Collection Added");
    });

    on<_DeleteDrugCollection>((event, emit) async {
      await getIt<DeleteDrugCollection>().call(event.index);
      print("Collection Added");
    });
  }
}
