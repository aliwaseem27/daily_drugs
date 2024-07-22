import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/enums.dart';
import '../../utils/constants/app_sizes.dart';
import 'blocs/drugs_order_bloc.dart';
import 'widgets/drug_info_tile.dart';
import 'widgets/edit_quantity_button.dart';
import 'widgets/quantity_customizer.dart';

class DrugsOrderListScreen extends StatefulWidget {
  const DrugsOrderListScreen({super.key});

  static const String titleName = 'Drugs Order List';

  @override
  State<DrugsOrderListScreen> createState() => _DrugsOrderListScreenState();
}

class _DrugsOrderListScreenState extends State<DrugsOrderListScreen> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<DrugsOrderBloc, DrugsOrderState>(
                builder: (context, state) {
                  return state.map(
                    initial: (state) {
                      return const SizedBox();
                    },
                    loading: (state) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loaded: (state) {
                      final drugs = state.drugs;
                      print(drugs[0].name);
                      return ListView.separated(
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
                                  return Container(
                                    margin: const EdgeInsets.only(bottom: AppSizes.sm),
                                    child: Column(
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
                                                const Expanded(
                                                  child: EditQuantityButton(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        // Quantity Customizer
                                        QuantityCustomizer(show: show, drug: drugs[secIndex]),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox();
                                },
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                      );
                    },
                    error: (state) {
                      return Center(
                        child: Text(state.message),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
