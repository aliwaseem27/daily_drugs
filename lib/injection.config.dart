// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:daily_drugs/features/drug_collections/data/datasources/drug_collections_local_data_source.dart'
    as _i46;
import 'package:daily_drugs/features/drug_collections/data/repositories/drug_collection_repo_impl.dart'
    as _i1002;
import 'package:daily_drugs/features/drug_collections/domain/repositories/drug_collection_repo.dart'
    as _i546;
import 'package:daily_drugs/features/drug_collections/domain/usecases/get_all_collections.dart'
    as _i849;
import 'package:daily_drugs/features/drug_collections/presentation/blocs/drug_collections_bloc.dart'
    as _i703;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i46.DrugCollectionsLocalDataSource>(
        () => _i46.DrugCollectionsLocalDataSource());
    gh.factory<_i703.DrugCollectionsBloc>(() => _i703.DrugCollectionsBloc());
    gh.lazySingleton<_i546.DrugCollectionRepo>(() =>
        _i1002.DrugCollectionRepoImpl(
            localDataSource: gh<_i46.DrugCollectionsLocalDataSource>()));
    gh.factory<_i849.GetAllCollections>(() => _i849.GetAllCollections(
        collectionsRepository: gh<_i546.DrugCollectionRepo>()));
    return this;
  }
}
