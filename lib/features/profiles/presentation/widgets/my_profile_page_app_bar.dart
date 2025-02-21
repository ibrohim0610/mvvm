import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/profiles/presentation/widgets/recipe_circular_button.dart';

import '../../../../core/sizes.dart';
import '../pages/my_profile_view_model.dart';
import 'my_profile_app_bar_bottom.dart';
import 'my_profile_app_bar_title.dart';


class MyProfilePageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MyProfilePageAppBar({
    super.key,

  });
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 240 * AppSizes.hRatio);


  @override
  Widget build(BuildContext context) {
    var vm = context.watch<MyProfileViewModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding36),
      child: AppBar(

        backgroundColor: AppColors.beigeColor,
        leadingWidth: 102 * AppSizes.wRatio,
        toolbarHeight: 102 * AppSizes.hRatio,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(51),
          child: Image.network(
            vm.myProfile!.image,
          ),
        ),
        title: MyProfileAppBarTitle(),
        actions: [
          Align(
              alignment: Alignment.topCenter,
              child: RecipeCircularButton(
                image: 'assets/svg/plus.svg',
                callBack: () {},
              )),
          SizedBox(
            width: 5,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: RecipeCircularButton(
                  callBack: () {}, image: "assets/svg/main.svg"))
        ],
        bottom: MyProfileAppBarBottom(),
      ),
    );
  }
}
