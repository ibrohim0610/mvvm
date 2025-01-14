import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'recipe_svg_image.dart';

class RecipeIconButton extends StatelessWidget {
  const RecipeIconButton({
    super.key,
    this.alignment = Alignment.center,
    this.color = AppColors.redPinkMain,
    required this.image,
    required this.width,
    required this.height,
    required this.callback,
  });

  final String image;
  final Alignment alignment;
  final Color color;
  final double width, height;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: callback,
      icon: RecipeSvgImage(
        image: image,
        width: width,
        height: height,
        color: color,
        alignment: alignment,
      ),
    );
  }
}
