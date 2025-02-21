import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';

import '../../../../core/sizes.dart';
import '../pages/my_profile_view_model.dart';

class MyProfileAppBarTitle extends StatelessWidget {
  const MyProfileAppBarTitle({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    var vm = context.watch<MyProfileViewModel>();
    return SizedBox(
      width: 170 * AppSizes.wRatio,
      height: 102 * AppSizes.hRatio,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          Text(
            vm.myProfile!.fullName,
            style: TextStyle(
              fontFamily: "Poppins",
              color: AppColors.redPinkMain,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          Text(
            "@${vm.myProfile!.username}",
            style: TextStyle(
              color: AppColors.pinkSub,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          Text(
            vm.myProfile!.presentation,
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
              fontFamily: "League Spartan",
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
