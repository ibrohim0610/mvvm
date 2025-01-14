import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'recipe_icon_button.dart';

class RecipeAppBarAction extends StatelessWidget {
  const RecipeAppBarAction({
    super.key,
    this.color = AppColors.redPinkMain,
    required this.image,
    required this.callback,
    this.iconWidth = 12,
    this.iconHeight = 18,
  });

  final String image;
  final Color color;

  final double iconWidth, iconHeight;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: AppColors.pink,
        borderRadius: BorderRadius.circular(14),
      ),
      child: RecipeIconButton(
        image: image,
        width: iconWidth,
        height: iconHeight,
        color: color,
        callback: callback,
      ),
    );
  }
}