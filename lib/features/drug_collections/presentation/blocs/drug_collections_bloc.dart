import 'package:bloc/bloc.dart';
import 'package:daily_drugs/features/drug_collections/data/repositories/drug_collection_repo_impl.dart';
import 'package:daily_drugs/features/drug_collections/domain/repositories/drug_collection_repo.dart';
import 'package:daily_drugs/features/drug_collections/domain/usecases/get_all_collections.dart';
import 'package:daily_drugs/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/drug_collection.dart';

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
  }
}
