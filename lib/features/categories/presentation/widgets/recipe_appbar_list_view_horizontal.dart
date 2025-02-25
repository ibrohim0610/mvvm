import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/colors.dart';
import '../../data/models/categories_model.dart';

class CategoriesHorizontalScrollBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoriesHorizontalScrollBar({
    super.key,
    required this.categories,
    required this.selected,
  });

  final List<CategoryModel> categories;
  final CategoryModel? selected;

  @override
  Size get preferredSize => const Size(double.infinity, 25);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoriesHorizontalBarItem(
          category: categories[index],
          selected: categories[index].id == selected?.id,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
      ),
    );
  }
}

class CategoriesHorizontalBarItem extends StatelessWidget {
  const CategoriesHorizontalBarItem({
    super.key,
    required this.category,
    required this.selected,
  });

  final CategoryModel category;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.go('/categories/detail', extra: category),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 10),
        foregroundColor: selected ? Colors.white : AppColors.redPinkMain,
        backgroundColor: selected ? AppColors.redPinkMain : Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
      ),
      child: Text(
        category.title,
        style: TextStyle(
          fontFamily: 'League Spartan',
          fontSize: 16,
        ),
      ),
    );
  }
}