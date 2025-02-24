import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories_detail/presentation/pages/recipe_icon_button_container.dart';

class CategoriesDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoriesDetailAppBar({
    super.key,
  });
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  const Size(double.infinity, 132);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: AppBar(
        backgroundColor: AppColors.beigeColor,
        toolbarHeight: 132,
        leadingWidth: 20,
        leading: SvgPicture.asset(
          'assets/svg/arrow.svg',
          width: 16,
          height: 14,
          fit: BoxFit.cover,
        ),
        title: Text(
          'Breakfast',
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        actions: [
          RecipeIconButtonContainer(image: 'assets/svg/notification.svg'),
          RecipeIconButtonContainer(image: 'assets/svg/search.svg'),
        ],
        // bottom: ListView.separated(itemBuilder: , separatorBuilder: separatorBuilder, itemCount: itemCount),
      ),
    );
  }
}
