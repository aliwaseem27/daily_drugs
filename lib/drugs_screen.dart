import 'package:daily_drugs/drug.dart';
import 'package:daily_drugs/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

import 'enums.dart';

class DrugsScreen extends StatelessWidget {
  const DrugsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final drugs = <Drug>[
      Drug(name: 'Paracetamol v.', category: Category.vials, quantity: 6),
      Drug(name: 'Sevelamir', category: Category.tabs, quantity: 120),
      Drug(name: 'Fucidin Cream', category: Category.others, quantity: 24),
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
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(AppSizes.sm),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: index % 2 == 0 ? Colors.transparent : Colors.teal,
                      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Container(
                            padding: EdgeInsets.all(AppSizes.xs),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  drugs[index].name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Quantity: ",
                                    ),
                                    Text(drugs[index].quantity.toString()),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: AppSizes.sm,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.edit_note),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(AppSizes.borderRadiusMd),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: AppSizes.spaceBtwSections);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

ListView.separated(
                shrinkWrap: true,
                itemCount: drugs.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.all(AppSizes.sm),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: index % 2 == 0 ? Colors.transparent : Colors.teal,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppSizes.borderRadiusMd),
                              bottomLeft: Radius.circular(AppSizes.borderRadiusMd),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(AppSizes.xs),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(AppSizes.borderRadiusMd),
                                bottomLeft: Radius.circular(AppSizes.borderRadiusMd),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  drugs[index].name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Quantity: ",
                                    ),
                                    Text(drugs[index].quantity.toString()),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: AppSizes.xs),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppSizes.borderRadiusMd),
                            bottomRight: Radius.circular(AppSizes.borderRadiusMd),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            size: 36,
                            Icons.edit_note,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: AppSizes.spaceBtwSections);
                },
              ),


 */
