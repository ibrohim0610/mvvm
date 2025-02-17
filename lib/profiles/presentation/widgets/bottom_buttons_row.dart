import 'package:flutter/material.dart';
import 'package:recipe_app/profiles/presentation/widgets/recipe_elevated_button.dart';

class BottomButtonsRow extends StatelessWidget {
  const BottomButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RecipeElevatedButton(text: "Edit Profile", callBack: () {}),
        RecipeElevatedButton(text: "Share Profile", callBack: () {}),
      ],
    );
  }
}
