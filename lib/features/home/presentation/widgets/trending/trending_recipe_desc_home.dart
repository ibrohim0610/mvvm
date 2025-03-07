import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

class TrendingRecipeDescHome extends StatelessWidget {
  const TrendingRecipeDescHome({
    super.key, required this.rating,
  });

  final num rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "This is a quick overview of the ingredients...",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 13),
        ),
        Row(
          children: [
            RecipeRating(rating: rating)
          ],
        )
      ],
    );
  }
}
