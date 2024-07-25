import 'package:daily_drugs/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';


class EditQuantityButton extends StatelessWidget {
  const EditQuantityButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(AppSizes.borderRadiusMd),
            bottomRight: Radius.circular(AppSizes.borderRadiusMd),
          )),
      child: IconButton(
        icon: const Icon(
          Icons.edit_note,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}