import 'package:daily_drugs/features/drug_collections/data/models/drug_collection_model.dart';
import 'package:daily_drugs/features/drug_collections/data/models/drug_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'bloc_observer.dart';
import 'features/navigation/navigation_screen.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const NavigationScreen(),
    );
  }
}
