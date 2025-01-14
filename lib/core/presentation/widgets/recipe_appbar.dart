import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/core.dart';

class RecipeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeAppbar({
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
        leadingWidth: 35,
        leading: RecipeIconButton(
          callback: context.pop,
          image: "assets/icons/back-arrow.svg",
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
            image: "assets/icons/notification.svg",
            color: AppColors.pinkSub,
            callback: () {},
          ),
          SizedBox(width: 5),
          RecipeAppBarAction(
            image: "assets/icons/search.svg",
            color: AppColors.pinkSub,
            callback: () {},
          )
        ],
      ),
    );
  }
}
