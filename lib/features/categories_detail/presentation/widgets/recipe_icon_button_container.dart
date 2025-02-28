import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories_detail/presentation/manager/categories_detail_view_model.dart';

class RecipeIconButtonContainer extends StatelessWidget {
  const RecipeIconButtonContainer({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: AppColors.pink),
      child: SvgPicture.asset(
        image,
        width: 12,
        height: 18,
        fit: BoxFit.fill,
      ),
    );
  }
}
