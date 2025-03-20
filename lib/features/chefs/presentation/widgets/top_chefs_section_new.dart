import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/chefs/presentation/widgets/top_chefs_section_image_title.dart';

class TopChefsSectionNew extends StatelessWidget {
  const TopChefsSectionNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text(
            'New chefs',
            style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          ),
          Row(
            spacing: 10,
            children: [
              TopChefsSectionImageTitle(image: 'assets/images/lily.png', title: 'Lily Chen-Chef', username: '@lily_chef', rating: 6687),
              TopChefsSectionImageTitle(image: 'assets/images/edward.png', title: 'Edward Jones', username: '@edjones_chef', rating: 4565),
            ],
          )
        ],
      ),
    );
  }
}
