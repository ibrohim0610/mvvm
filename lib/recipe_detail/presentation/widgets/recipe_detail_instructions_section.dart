import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

import '../../data/models/instruction_model.dart';

class RecipeDetailInstructionsSection extends StatelessWidget {
  const RecipeDetailInstructionsSection({
    super.key,
    required this.instructions,
  });

  final List<Instruction> instructions;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 11,
      children: [
        Text(
          "${instructions.length} Easy Steps",
          style: TextStyles.recipeSectionTitle,
        ),
        SizedBox(height: 11),
        for (int i = 0; i < instructions.length; i++)
          Container(
            height: 81,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: i % 2 == 0 ? AppColors.pinkSub : AppColors.pink,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              "${i + 1}. ${instructions[i].text}",
              style: TextStyle(color: Colors.black),
            ),
          ),
      ],
    );
  }
}