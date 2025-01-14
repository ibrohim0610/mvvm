import 'package:flutter/material.dart';

import '../../core.dart';

class RecipeRating extends StatelessWidget {
  const RecipeRating({
    super.key,
    required this.rating,
    this.textColor = AppColors.pinkSub,
    this.iconColor = AppColors.redPinkMain,
    this.swap = false,
  });

  final Color textColor, iconColor;
  final double rating;
  final bool swap;

  @override
  Widget build(BuildContext context) {
    Text text = Text(
      rating.toString(),
      style: TextStyle(
        color: textColor,
        fontSize: 12,
      ),
    );

    RecipeSvgImage image = RecipeSvgImage(
      image: "assets/icons/star.svg",
      width: 10,
      height: 10,
      color: iconColor,
    );
    return Row(
      children: [
        swap ? image : text,
        SizedBox(width: 5),
        swap ? text : image,
      ],
    );
  }
}
