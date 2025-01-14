import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/core.dart';

import '../../data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    this.main = false,
    this.width = 159,
    this.height = 145,
  });

  final CategoryModel category;
  final double width, height;
  final bool main;

  @override
  Widget build(BuildContext context) {
    Widget image = Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image(
          image: CachedNetworkImageProvider(category.image),
          width: width * AppSizes.wRatio,
          height: height * AppSizes.hRatio,
          fit: BoxFit.cover,
        ),
      ),
    );

    Widget title = Text(category.title);
    return GestureDetector(
      onTap: () => context.go('/categories/detail', extra: category),
      child: Column(
        children: [
          main ? title : image,
          SizedBox(height: 5),
          main ? image : title,
        ],
      ),
    );
  }
}
