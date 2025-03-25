import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/chefs/presentation/manager/top_chef_state.dart';
import 'package:recipe_app/features/chefs/presentation/manager/top_chefs_bloc.dart';
import 'package:recipe_app/features/chefs/presentation/widgets/top_chefs_section_image_title.dart';

class TopChefsSectionMostLiked extends StatelessWidget {
  const TopChefsSectionMostLiked({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopChefsBloc,TopChefsState>(
      builder: (context, state) {
        if (state.mostLikedChefsStatus == TopChefsStatus.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (state.mostLikedChefsStatus == TopChefsStatus.idle) {
        }return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                'Most Liked chefs',
                style: TextStyle(
                    color: AppColors.redPinkMain,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var chef in state.mostLikedChefs)TopChefsSectionImageTitle(image: chef.image, title: chef.username, username: chef.firstName, rating: 4456,),
                ],
              )
            ],
          ),
        );
      }
    );
  }
}
