import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/core.dart';

import '../../sizes.dart';

class RecipeAppbarDetail extends StatelessWidget implements PreferredSizeWidget {
  const RecipeAppbarDetail({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => const Size(double.infinity, 61);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding38),
      child: AppBar(
        toolbarHeight: 61,
        leadingWidth: 20,
        leading: RecipeIconButton(
          callback: context.pop,
          image: "assets/svg/arrow.svg",
          width: 30,
          height: 14,
        ),
        centerTitle: true,
        title: Text(
          title,
          style: TextStyles.appBarTitleStyle,
        ),
        actions: [
          RecipeAppBarAction(
            image: "assets/svg/heart.svg",
            color: AppColors.pinkSub,
            iconWidth: 16,
            iconHeight: 16,
            callback: () {},
          ),
          SizedBox(width: 5),
          RecipeAppBarAction(
            image: "assets/svg/share.svg",
            color: AppColors.pinkSub,
            iconWidth: 16,
            iconHeight: 16,
            callback: () {},
          )
        ],
      ),
    );
  }
}
