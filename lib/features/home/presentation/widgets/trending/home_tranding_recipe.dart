import 'package:flutter/material.dart';
import 'package:recipe_app/features/home/presentation/widgets/home_title_page.dart';

class HomeTrendingRecipe extends StatelessWidget {
  const HomeTrendingRecipe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 358,
        height: 182,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            HomeTitlePage(),
            SizedBox(
              width: double.infinity,
              height: 143,
              child: Image.asset(
                'assets/images/tranding_recipe.png',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
