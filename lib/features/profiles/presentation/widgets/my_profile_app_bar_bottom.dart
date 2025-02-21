import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bottom_buttons_row.dart';
import 'bottom_tab_bar.dart';
import 'my_profile_app_bar_bottom_container.dart';

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
