import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/colors.dart';

class RecipeSvgImage extends StatelessWidget {
  const RecipeSvgImage({
    super.key,
    this.alignment = Alignment.center,
    this.color = AppColors.redPinkMain,
    required this.image,
    required this.width,
    required this.height,
  });

  final String image;
  final Alignment alignment;
  final Color color;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SvgPicture.asset(
        image,
        width: width,
        height: height,
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}
