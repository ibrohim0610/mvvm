import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class RecipeElevatedButton extends StatelessWidget {
  const RecipeElevatedButton({
    super.key,
    required this.text,
    required this.callback,
    this.backgroundColor = AppColors.pink,
    this.foregroundColor = AppColors.pinkSub,
    this.size = const Size(175, 27),
    this.fontSize = 15,
    this.fontWeight = FontWeight.w500,
  });

  final String text;
  final Color backgroundColor, foregroundColor;
  final Size size;
  final double fontSize;
  final FontWeight fontWeight;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: size,
        child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}