import 'package:daily_drugs/features/drug_collections/data/models/drug_collection_model.dart';
import 'package:daily_drugs/features/drug_collections/data/models/drug_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'bloc_observer.dart';
import 'features/drug_collections/presentation/blocs/drug_collections_bloc.dart';
import 'features/navigation/navigation_screen.dart';
import 'features/new_order/presentation/drugs_order_list_screen/blocs/drugs_order_bloc.dart';
import 'injection.dart';

late Isar isar;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();

  if (Isar.instanceNames.isEmpty) {
    isar = await Isar.open(
      [DrugCollectionModelSchema, DrugModelSchema],
      directory: dir.path,
    );
  }

  configureDependencies();
  runApp(const MyApp());
  Bloc.observer = AppBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DrugsOrderBloc>(
          create: (context) => DrugsOrderBloc()..add(const DrugsOrderEvent.loadDrugs()),
        ),
        BlocProvider(
          create: (context) => getIt<DrugCollectionsBloc>()..add(const DrugCollectionsEvent.getDrugCollections()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const NavigationScreen(),
      ),
    );
  }
}
