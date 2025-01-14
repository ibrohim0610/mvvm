import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

class RecipeDetailImageAndInfo extends StatelessWidget {
  const RecipeDetailImageAndInfo({
    super.key,
    required this.image,
    required this.title,
    required this.rating,
    required this.reviews,
  });

  final String image, title;
  final double rating;
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 357 * AppSizes.wRatio,
        height: 337 * AppSizes.hRatio,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.redPinkMain,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            RecipeRating(
                              rating: rating,
                              textColor: Colors.white,
                              iconColor: Colors.white,
                              swap: true,
                            ),
                            SizedBox(width: 10),
                            RecipeReview(reviews: reviews),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: CachedNetworkImageProvider(image),
                width: 357 * AppSizes.wRatio,
                height: 281 * AppSizes.hRatio,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}