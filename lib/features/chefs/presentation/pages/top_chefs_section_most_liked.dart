import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chefs_section_image_title.dart';

class TopChefsSectionMostLiked extends StatelessWidget {
  const TopChefsSectionMostLiked({
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
            'Most Liked chefs',
            style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopChefsSectionImageTitle(image: 'assets/images/daniel.png', title: 'Daniel Martinez', username: '@dan-chef', rating: 5154),
              TopChefsSectionImageTitle(image: 'assets/images/aria.png', title: 'Aria Chang', username: '@aria_chef', rating: 4514)
            ],
          )
        ],
      ),
    );
  }
}
