import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/home/presentation/manager/home_view_model.dart';
import 'package:recipe_app/features/home/presentation/widgets/top_chef_section_item.dart';

class TopChefSectionHome extends StatelessWidget {
  const TopChefSectionHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeViewModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 9,
        children: [
          Text(
            "Top Chef",
            style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          Row(
            spacing: 6,
            children: [
              TopChefSectionItem(image: vm.chefs[0].image, title: vm.chefs[0].firstName),
              TopChefSectionItem(image: vm.chefs[1].image, title: vm.chefs[1].firstName),
              TopChefSectionItem(image: vm.chefs[2].image, title: vm.chefs[2].firstName),
              TopChefSectionItem(image: vm.chefs[3].image, title: vm.chefs[3].firstName),

            ],
          )
        ],
      ),
    );
  }
}
