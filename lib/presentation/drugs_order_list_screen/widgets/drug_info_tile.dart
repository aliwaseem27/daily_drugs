import 'package:flutter/material.dart';

import '../../../domain/drug.dart';
import '../../../utils/constants/constants.dart';

class DrugInfoTile extends StatelessWidget {
  const DrugInfoTile({
    super.key,
    required this.drug,
  });

  final Drug drug;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: AppSizes.xs, top: AppSizes.xs, bottom: AppSizes.xs),
      decoration: BoxDecoration(
        border: Border.all(
          color: drug.isSelected ? Colors.transparent : Colors.black38,
        ),
        color: drug.isSelected ? Colors.green : Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSizes.borderRadiusMd),
          bottomLeft: Radius.circular(AppSizes.borderRadiusMd),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(AppSizes.xs),
              decoration: BoxDecoration(
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
                      Text("Qty: "),
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
