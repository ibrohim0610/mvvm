import 'package:flutter/material.dart';
import '../manager/onboarding_view_model.dart';
import 'onboarding_elevatedbutton.dart';

class OnboardingPageOneView extends StatelessWidget {
  const OnboardingPageOneView({
    super.key,
    required this.vm, required this.index,
  });

  final OnboardingViewModel vm;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image(
          image: NetworkImage(vm.pages[index].image),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF1C0F0D),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1C0F0D), Colors.transparent],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
              ),
              child: Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vm.pages[index].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    vm.pages[index].subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1C0F0D), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 48),
          child: OnboardingElevatedButton(
              callback: () => vm.controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear,
                  ),
              title: "Continue"),
        ),
      ],
    );
  }
}
