import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

class TrendingRecipeTitleHome extends StatelessWidget {
  const TrendingRecipeTitleHome({
    super.key, required this.time,
  });

  final int time;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        "Salami and cheese pizza",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 13),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RecipeTime(time: time)
          ]
      ),
    ]
    );
  }
}
