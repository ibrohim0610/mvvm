import "package:flutter/material.dart";

class RecipeReviewTitleImageItem extends StatelessWidget {
  const RecipeReviewTitleImageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "@Andrew-Mar",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        Text(
          "Andrew Martinez-Chef",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
