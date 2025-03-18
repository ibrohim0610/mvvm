import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:recipe_app/core/core.dart";

class RecipeReviewAppBar extends StatelessWidget implements PreferredSizeWidget{
  const RecipeReviewAppBar({
    super.key, required this.title,
  });
  @override
  Size get preferredSize => const Size(double.infinity, 61);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: AppBar(
        backgroundColor: AppColors.beigeColor,
        centerTitle: true,
        leading: Center(
          child: SvgPicture.asset(
            'assets/svg/arrow.svg',
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
              color: AppColors.redPinkMain,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
