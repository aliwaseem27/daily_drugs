import 'package:daily_drugs/core/utils/constants/app_sizes.dart';
import 'package:daily_drugs/features/drug_collections/presentation/blocs/drug_collections_bloc.dart';
import 'package:daily_drugs/features/drug_collections/presentation/blocs/drug_collections_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrugCollectionsScreen extends StatelessWidget {
  const DrugCollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<DrugCollectionsBloc, DrugCollectionsState>(
              builder: (context, state) {
                return state.map(
                    initial: (_) => const SizedBox(),
                    loading: (_) => const Center(child: CircularProgressIndicator()),
                    loaded: (loadedState) {
                      return ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: loadedState.drugCollections.length,
                        itemBuilder: (context, index) {
                          final collections = loadedState.drugCollections;
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(AppSizes.xs),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    collections[index].name,
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    collections[index].description,
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 10);
                        },
                      );
                    },
                    error: (_) => Center(child: const Text('Error loading collections')));
              },
            ),
          ],
        ),
      ),
    );
  }
}
