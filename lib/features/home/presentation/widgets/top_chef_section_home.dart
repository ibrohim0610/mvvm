import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/home/presentation/widgets/top_chef_section_item.dart';

class TopChefSectionHome extends StatelessWidget {
  const TopChefSectionHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 9,
        children: [
          Text(
            "Top Chef",
            style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              TopChefSectionItem(image: 'assets/images/joseph.png', title: 'Joseph',),
              TopChefSectionItem(image: 'assets/images/andrew.png', title: 'Andrew',),
              TopChefSectionItem(image: 'assets/images/emily.png', title: 'Emily',),
              TopChefSectionItem(image: 'assets/images/jessica.png', title: 'Jessica',),
            ],
          )
        ],
      ),
    );
  }
}
