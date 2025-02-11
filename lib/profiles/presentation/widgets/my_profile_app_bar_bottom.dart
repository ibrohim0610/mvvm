import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/profiles/presentation/widgets/bottom_buttons_row.dart';
import 'package:recipe_app/profiles/presentation/widgets/bottom_tab_bar.dart';
import 'package:recipe_app/profiles/presentation/widgets/my_profile_app_bar_bottom_container.dart';
import 'package:recipe_app/profiles/presentation/pages/my_profile_view_model.dart';

class MyProfileAppBarBottom extends StatelessWidget
    implements PreferredSizeWidget {
  const MyProfileAppBarBottom({
    super.key,

  });


  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, double.infinity);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        BottomButtonsRow(),
        MyProfileAppBarBottomContainer(),
        BottomTabBar(),
        SizedBox(height: 10,
        )
      ],
    );
  }
}
