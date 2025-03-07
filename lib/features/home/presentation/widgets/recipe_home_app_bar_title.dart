import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

class RecipeHomeAppBarTitle extends StatelessWidget {
  const RecipeHomeAppBarTitle({
    super.key, required this.title, required this.subtitle,
  });
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontWeight: FontWeight.w400,
            fontSize: 25,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
