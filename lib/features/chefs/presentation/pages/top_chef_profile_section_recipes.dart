import 'package:flutter/material.dart';
import 'package:recipe_app/features/chefs/presentation/pages/top_chef_profile_section_image_titlle.dart';

class TopChefProfileSectionRecipes extends StatelessWidget {
  const TopChefProfileSectionRecipes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        TopChefProfileSectionImageTitle(image: 'assets/images/vegan_recipes.png', title: 'Vegan Recipes'),
        TopChefProfileSectionImageTitle(image: 'assets/images/asian_eritage.png', title: 'Asian Heritage'),
        TopChefProfileSectionImageTitle(image: 'assets/images/guilty_pleasures.png', title: 'Guilty Pleasures'),
      ],
    );
  }
}
