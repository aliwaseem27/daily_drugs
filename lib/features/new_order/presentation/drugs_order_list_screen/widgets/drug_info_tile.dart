import 'package:daily_drugs/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../../drug_collections/domain/entities/drug.dart';


class DrugInfoTile extends StatelessWidget {
  const DrugInfoTile({
    super.key,
    required this.drug,
  });

  final Drug drug;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: AppSizes.xs, top: AppSizes.xs, bottom: AppSizes.xs),
      decoration: BoxDecoration(
        border: Border.all(
          color: true ? Colors.transparent : Colors.black38,
        ),
        color: false ? Colors.green : Colors.transparent,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSizes.borderRadiusMd),
          bottomLeft: Radius.circular(AppSizes.borderRadiusMd),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(AppSizes.xs),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.borderRadiusMd),
                  bottomLeft: Radius.circular(AppSizes.borderRadiusMd),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    drug.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      const Text("Qty: "),
                      Text(
                        drug.quantity.toString(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
