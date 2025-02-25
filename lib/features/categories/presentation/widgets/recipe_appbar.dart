import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar_action.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_appbar_list_view_horizontal.dart';
import 'package:recipe_app/features/categories/presentation/widgets/recipe_icon_button.dart';

import '../../../../core/routing/routes.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 38),
      child: AppBar(
        backgroundColor: AppColors.beigeColor,
        toolbarHeight: 61,
        leadingWidth: 35,
        leading: RecipeIconButton(
          callback: () {
            context.go(Routes.login);
          },
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
            image: "assets/svg/notification.svg",
            color: AppColors.pinkSub,
            callback: () {},
          ),
          SizedBox(width: 5),
          RecipeAppBarAction(
            image: "assets/svg/search.svg",
            color: AppColors.pinkSub,
            callback: () {},
          ),
        ],
      ),
    );
  }
}
