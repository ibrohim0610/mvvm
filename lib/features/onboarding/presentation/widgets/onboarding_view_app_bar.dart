import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

import '../../../../core/sizes.dart';
import '../manager/onboarding_view_model.dart';

class OnboardingViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OnboardingViewAppBar({
    super.key,
    required this.vm,
    required this.index,
  });


  final int index;


  @override
  Size get preferredSize => const Size(double.infinity, 156);
  final OnboardingViewModel vm;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding36),
      child: AppBar(
        backgroundColor: AppColors.beigeColor,
        leading: Visibility(
          visible: index != 0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () =>
                  vm.controller.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear,
                  ),
              child: SvgPicture.asset(
                "assets/svg/arrow.svg",
                width: 30,
                height: 20,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 100),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vm.pages[index].title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    vm.pages[index].subtitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 40,)
                ],
              ),
            )
        ),
      ),
    );
  }
}


