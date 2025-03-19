import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeTextButtonContainer extends StatelessWidget {
  const RecipeTextButtonContainer({
    super.key,
    required this.text,
    required this.textColor,
    required this.containerColor,
    required this.callback,
    this.containerWidth,
    this.containerHeight,
    this.fontSize = 15,
    this.fontWeight = FontWeight.w500,
    this.containerPaddingH = 20,
  });

  final String text;
  final double fontSize;
  final double? containerWidth, containerHeight;
  final double containerPaddingH;
  final FontWeight fontWeight;
  final Color textColor, containerColor;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      padding: EdgeInsets.symmetric(horizontal: containerPaddingH.w),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(22),
      ),
      alignment: Alignment.center,
      child: TextButton(
        onPressed: callback,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize.sp,
            fontWeight: fontWeight,
            height: 1,
          ),
        ),
      ),
    );
  }
}