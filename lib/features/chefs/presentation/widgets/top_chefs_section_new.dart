import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/chefs/presentation/manager/top_chef_state.dart';
import 'package:recipe_app/features/chefs/presentation/manager/top_chefs_bloc.dart';
import 'package:recipe_app/features/chefs/presentation/widgets/top_chefs_section_image_title.dart';

class TopChefsSectionNew extends StatelessWidget {
  const TopChefsSectionNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopChefsBloc, TopChefsState>(
      builder: (context, state)=> Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text(
              'New chefs',
              style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
            Row(
              spacing: 10,
              children: [
                for (var chef in state.newChefs)TopChefsSectionImageTitle(image: chef.image, title: chef.username, username: chef.firstName, rating: 4456,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
