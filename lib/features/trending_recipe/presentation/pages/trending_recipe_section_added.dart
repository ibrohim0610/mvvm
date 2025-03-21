import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/trending_recipe/presentation/pages/trending_recipe_section_added_image_title.dart';

class TrendingRecipeSectionAdded extends StatelessWidget {
  const TrendingRecipeSectionAdded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text("See All",
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontWeight: FontWeight.w500,
              fontSize: 12,
            fontFamily: 'Poppins'
          ),),
        ),
        TrendingRecipeSectionAddedImageTitle(image: 'assets/images/chicken_curry.png',
          title: 'Chicken Curry',
          desc: 'Savor the aromatic Chicken Curry—a rich blend of spices...',
          username: 'By Chef Josh Ryan',
          duration:'45 min',rating: '4',
        ),
        TrendingRecipeSectionAddedImageTitle(image: 'assets/images/chicken_burger.png',
          title: 'Chicken Burger',
          desc: 'Indulge in a flavorful Chicken Burger: seasoned chicken...',
          username: 'By Chef Andrew',
          duration:'15 min',rating: '5',
        ),
        TrendingRecipeSectionAddedImageTitle(image: 'assets/images/tiramisu.png',
          title: 'Tiramisu',
          desc: 'Mix the flours, salt,cinnamon and baking powder...',
          username: 'By Chef Andrew',
          duration:'30 min',rating: '5',
        ),
        TrendingRecipeSectionAddedImageTitle(image: 'assets/images/tofu_sandwich.png',
          title: 'Tofu Sandwich',
          desc: 'Mix the flours, salt,cinnamon and baking powder...',
          username: 'By Chef Jhon',
          duration:'30 min',rating: '4',
        ),
      ],
    );
  }
}
