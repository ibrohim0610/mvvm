import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

import '../../../../core/utils/colors.dart';

class RecipeDetailDetailsSection extends StatelessWidget {
  const RecipeDetailDetailsSection({
    super.key, required this.desc, required this.timeRequired,
  });

  final String desc;
  final int timeRequired;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Details',
              style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(width: 15),
            RecipeTime(time: timeRequired,
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ],
        ),
        Text(desc,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),)
      ],
    );
  }
}
