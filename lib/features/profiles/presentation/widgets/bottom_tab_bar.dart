import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.redPinkMain,
      tabs: [
        Text(
          "Recipes",
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontFamily: "Poppins"),
        ),
        Text(
          "Favorites",
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontFamily: "Poppins"),
        ),
      ],
    );
  }
}
