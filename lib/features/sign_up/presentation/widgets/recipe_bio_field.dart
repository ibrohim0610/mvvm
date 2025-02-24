import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

class RecipeBioField extends StatelessWidget {
  const RecipeBioField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bio',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        TextField(
          maxLines: 5,
          minLines: 5,
          style: TextStyle(color: AppColors.beigeColor),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              filled: true,
              fillColor: AppColors.pink,
              hintText: 'About Yourself',
              hintStyle: TextStyle(
                color: AppColors.beigeColor.withValues(alpha: 0.5),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(18),
              )),
        )
      ],
    );
  }
}
