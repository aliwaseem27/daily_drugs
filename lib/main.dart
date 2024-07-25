import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';
import 'features/navigation/navigation_screen.dart';
import 'injection.dart';

void main() {
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
