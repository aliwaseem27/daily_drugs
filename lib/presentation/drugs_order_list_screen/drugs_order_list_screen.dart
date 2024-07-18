import 'package:flutter/material.dart';

import '../../domain/drug.dart';
import '../../domain/enums.dart';
import '../../utils/constants/app_sizes.dart';
import 'widgets/drug_info_tile.dart';
import 'widgets/edit_quantity_button.dart';

class DrugsOrderListScreen extends StatelessWidget {
  const DrugsOrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final drugs = <Drug>[
      Drug(name: 'Paracetamol v.', category: Category.vials, quantity: 6),
      Drug(name: 'Sevelamir', category: Category.tabs, quantity: 120),
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
                itemCount: drugs.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 5,
                          child: DrugInfoTile(drug: drugs[index]),
                        ),
                        Expanded(
                          child: EditQuantityButton(),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: AppSizes.sm);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
