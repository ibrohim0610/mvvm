import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/home/presentation/widgets/recently_added_section_item.dart';
import 'package:recipe_app/features/profiles/presentation/widgets/profile_item.dart';

class RecentlyAddedSectionHome extends StatelessWidget {
  const RecentlyAddedSectionHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 9,
        children: [
          Text(
            "Recently Added",
            style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RecentlyAddedSectionItem(image: "assets/images/lunch.png",
                  title: "Lemonade", desc: "Acidic and refreshing", rating: 4, duration: 30),
              RecentlyAddedSectionItem(image: "assets/images/dinner.png", title: "Lemonade", desc: "Acidic and refreshing", rating: 4, duration: 30)
            ],
          )
        ],
      ),
    );
  }
}
