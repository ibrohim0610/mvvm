import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/colors.dart';

class RecipeCircularButton extends StatelessWidget {
  const RecipeCircularButton({
    super.key,
    required this.callBack,
    required this.image,
     this.backgroundColor = const Color(0xFFFD5D69),
     this.iconColor = const Color(0xFFEC888D),
  });
final Function callBack;
final String image;
final Color backgroundColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack(),
      child: Container(
          width: 28,
          height: 28,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.pink),
          child: SvgPicture.asset(image)),
    );
  }
}