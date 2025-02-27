import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/core/presentation/widgets/recipe_elevated_button.dart';
import 'package:recipe_app/features/sign_up/presentation/widgets/complete_profile_description.dart';
import 'package:recipe_app/features/sign_up/presentation/widgets/complete_profile_gender.dart';
import 'package:recipe_app/features/sign_up/presentation/widgets/profile_image_picker.dart';
import 'package:recipe_app/features/sign_up/presentation/widgets/recipe_bio_field.dart';
import 'package:recipe_app/features/sign_up/presentation/widgets/view_app_bar.dart';

class CompleteProfileView extends StatelessWidget {
  const CompleteProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      appBar: AppBar(
        backgroundColor: AppColors.beigeColor,
        title: Center(
          child: Text('Profile',
            style:
            TextStyle(
                color: AppColors.redPinkMain,
                fontWeight: FontWeight.w600,
                fontSize: 20
            ),),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 36, vertical: 48),
        children: [
          CompleteProfileDescription(),
          SizedBox(
            height: 44,
          ),
          ProfileImagePicker(),
          SizedBox(height: 5),
          CompleteProfileGender(),
          SizedBox(height: 5),
          RecipeBioField(),
          SizedBox(height: 140,),
          RecipeElevatedButton(text: 'Continue',
              size: Size(207, 45),
              fontSize: 20,
              fontWeight: FontWeight.w600,
              backgroundColor:AppColors.redPinkMain,
              foregroundColor: Colors.white,
              callback: (){}
          )
        ],
      ),
    );
  }
}
