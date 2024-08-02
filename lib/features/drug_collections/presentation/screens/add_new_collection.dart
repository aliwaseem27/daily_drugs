import 'package:daily_drugs/core/utils/constants/app_sizes.dart';
import 'package:daily_drugs/features/drug_collections/presentation/blocs/drug_collections_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewCollectionScreen extends StatefulWidget {
  const AddNewCollectionScreen({super.key});

  @override
  State<AddNewCollectionScreen> createState() => _AddNewCollectionScreenState();
}

class _AddNewCollectionScreenState extends State<AddNewCollectionScreen> {
  final nameTextController = TextEditingController();
  final descriptionTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Collection"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameTextController,
                      decoration: const InputDecoration(
                        labelText: "Collection Name",
                      ),
                    ),
                    TextFormField(
                      controller: descriptionTextController,
                      decoration: const InputDecoration(
                        labelText: "Description",
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<DrugCollectionsBloc>().add(DrugCollectionsEvent.addDrugCollection(
                        nameTextController.text,
                        descriptionTextController.text,
                      ));
                  Navigator.pop(context);
                },
                child: Text("Add New Collection"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
