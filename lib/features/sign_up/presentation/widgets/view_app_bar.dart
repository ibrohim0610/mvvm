import 'package:flutter/material.dart';
import 'package:recipe_app/core/core.dart';

class ViewAppBar extends StatelessWidget implements PreferredSizeWidget{
  const ViewAppBar({
    super.key, required this.title,
  });

  final String title;

  @override
  Size get preferredSize =>const Size(double.infinity, 61);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.beigeColor,
      title: Center(
        child: Text(
        title,
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: (){},
          child: Text('uz',
            style: TextStyle(color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        TextButton(onPressed: (){},
          child: Text('en',
            style: TextStyle(color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ],
    );
  }
}
