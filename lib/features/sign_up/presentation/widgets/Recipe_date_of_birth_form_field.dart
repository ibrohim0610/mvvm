import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/colors.dart';
import '../manager/sign_up_view_model.dart';

class RecipeDateOfBirthFormField extends StatelessWidget {
  const RecipeDateOfBirthFormField({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    var date = context.select((SignUpViewModel vm) => vm.selectedDate);
    return Center(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            onTap: () async {
              context.read<SignUpViewModel>().selectedDate = await showDatePicker(
                builder: (context, child) => Theme(
                  data: ThemeData(
                    colorScheme: ColorScheme(
                      brightness: Brightness.dark,
                      surface: Colors.white,
                      onSurface: AppColors.beigeColor,
                      primary: AppColors.redPinkMain,
                      onPrimary: Colors.white,
                      secondary: AppColors.pink,
                      onSecondary: AppColors.pinkSub,
                      error: AppColors.redPinkMain,
                      onError: Colors.white,
                    ),
                  ),
                  child: child!,
                ),
                context: context,
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              );
            },
            child: Container(
              width: 357,
              height: 49,
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: AppColors.pink,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                date == null ? "DD/MM/YYYY" : "${date.day}/${date.month}/${date.year}",
                style: TextStyle(
                  color: AppColors.beigeColor.withValues(alpha: date == null ? 0.5 : 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}