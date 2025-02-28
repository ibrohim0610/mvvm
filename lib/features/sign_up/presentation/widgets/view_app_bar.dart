import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/core/l10n/localization.dart';
import 'package:recipe_app/features/sign_up/presentation/manager/sign_up_view_model.dart';

import '../../../../core/l10n/app_localizations.dart';

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
          MyLocalizations.of(context)!.login,
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: (){
          context.read<LocalizationViewModel>().currentLocale = Locale(
            "uz",
          );
        },
          child: Text('uz',
            style: TextStyle(color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        TextButton(onPressed: (){
          context.read<LocalizationViewModel>().currentLocale=Locale("en");
        },
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
