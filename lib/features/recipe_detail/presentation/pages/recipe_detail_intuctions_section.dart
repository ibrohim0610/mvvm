import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/features/recipe_detail/data/models/instructions_model.dart';
import 'package:recipe_app/features/recipe_detail/presentation/manager/recipe_detail_viewmodel.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_app_bar.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_chef_info.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_details_section.dart';
import 'package:recipe_app/features/recipe_detail/presentation/pages/recipe_detail_ingredients_section.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/colors.dart';

class RecipeDetailInstructionsSection extends StatelessWidget {
  const RecipeDetailInstructionsSection({
    super.key, required this.instruction,
  });
  final List<Instructions> instruction;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 11,
      children: [
        Text(
          "${instruction.length} Easy Steps",
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 11),
        for (int i = 0; i < instruction.length; i++)
          Container(
            height: 81,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: i % 2 == 0 ? AppColors.pinkSub : AppColors.pink,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              "${i + 1}. ${instruction[i].title}",
              style: TextStyle(color: Colors.black),
            ),
          ),
      ],
    );
  }
}
