import 'package:flutter/material.dart';

import '../../domain/drug.dart';
import '../../domain/enums.dart';
import '../../utils/constants/app_sizes.dart';
import 'widgets/drug_info_tile.dart';
import 'widgets/edit_quantity_button.dart';
import 'widgets/quantity_customizer.dart';

class DrugsOrderListScreen extends StatefulWidget {
  const DrugsOrderListScreen({super.key});

  @override
  State<DrugsOrderListScreen> createState() => _DrugsOrderListScreenState();
}

class _DrugsOrderListScreenState extends State<DrugsOrderListScreen> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    final drugs = <Drug>[
      Drug(name: 'Paracetamol v.', category: Category.vials, quantity: 6),
      Drug(name: 'Sevelamir tab.', category: Category.tabs, quantity: 120, isSelected: false),
      Drug(name: 'Calcium tab.', category: Category.tabs, quantity: 60, isSelected: true),
      Drug(name: 'Fucidin Cream', category: Category.others, quantity: 24, isSelected: true),
      Drug(name: 'Paracetamol v.', category: Category.vials, quantity: 6),
      Drug(name: 'Sevelamir tab.', category: Category.tabs, quantity: 120, isSelected: false),
      Drug(name: 'Calcium tab.', category: Category.tabs, quantity: 60, isSelected: true),
      Drug(name: 'Fucidin Cream', category: Category.others, quantity: 24, isSelected: true),
      Drug(name: 'Paracetamol v.', category: Category.vials, quantity: 6),
      Drug(name: 'Sevelamir tab.', category: Category.tabs, quantity: 120, isSelected: false),
      Drug(name: 'Calcium tab.', category: Category.tabs, quantity: 60, isSelected: true),
      Drug(name: 'Fucidin Cream', category: Category.others, quantity: 24, isSelected: true),
      Drug(name: 'Paracetamol v.', category: Category.vials, quantity: 6),
      Drug(name: 'Sevelamir tab.', category: Category.tabs, quantity: 120, isSelected: false),
      Drug(name: 'Calcium tab.', category: Category.tabs, quantity: 60, isSelected: true),
      Drug(name: 'Fucidin Cream', category: Category.others, quantity: 24, isSelected: true),
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: Category.values.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Category.values[index].name,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount: drugs.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, secIndex) {
                          if (drugs[secIndex].category != Category.values[index]) {
                            return const SizedBox();
                          }
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Drug Info Tile
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    show = !show;
                                  });
                                },
                                child: IntrinsicHeight(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: DrugInfoTile(drug: drugs[secIndex]),
                                      ),
                                      Expanded(
                                        child: EditQuantityButton(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Quantity Customizer
                              QuantityCustomizer(show: show, drug: drugs[secIndex]),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: AppSizes.sm);
                        },
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
