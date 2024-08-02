import 'package:daily_drugs/features/drug_collections/presentation/blocs/drug_collections_bloc.dart';
import 'package:daily_drugs/features/drug_collections/presentation/screens/drug_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';
import '../history/presentation/screens/history_screen.dart';
import '../new_order/presentation/drugs_order_list_screen/blocs/drugs_order_bloc.dart';
import '../new_order/presentation/drugs_order_list_screen/drugs_order_list_screen.dart';
import '../settings/presentation/screens/settings_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  final _listPage = [
    const DrugsOrderListScreen(),
    const DrugCollectionsScreen(),
    const HistoryScreen(),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_listPage[_selectedIndex].toString()),
      ),
      body: _listPage.elementAt(_selectedIndex),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(child: Text('Day and History of Today')),
            ),
            ListTile(
              title: const Text('New Drugs Order'),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Drugs Collection Screen'),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('History'),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
