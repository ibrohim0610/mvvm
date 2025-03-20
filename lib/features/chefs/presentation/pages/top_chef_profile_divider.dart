import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

class TopChefProfileDivider extends StatelessWidget {
  const TopChefProfileDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Recipes',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 12),
        ),
        Divider(
          color: AppColors.redPinkMain,
        )
      ],
    );
  }
}
