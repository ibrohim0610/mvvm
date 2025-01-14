import 'package:flutter/material.dart';

import '../../core.dart';

class RecipeTime extends StatelessWidget {
  const RecipeTime({
    super.key,
    required this.time,
    this.textColor = AppColors.pinkSub,
    this.iconColor = AppColors.pinkSub,
  });

  final int time;
  final Color textColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RecipeSvgImage(
          image: "assets/icons/clock.svg",
          width: 10,
          height: 10,
          color: iconColor,
        ),
        SizedBox(width: 5),
        Text(
          "${time}min",
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
