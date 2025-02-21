import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../manager/onboarding_view_model.dart';
import '../widgets/onboarding_elevatedbutton.dart';
import '../widgets/onboarding_view_bottom_nav_bar.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key, required this.vm});

  final OnboardingViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: vm,
        builder: (context, child) => PageView.builder(
          controller: vm.controller,
          itemCount: vm.pages.length + 1,
          itemBuilder: (context, index) {
            if (index >= vm.pages.length) {
              return Scaffold(
                backgroundColor: Color(0xFF1C0F0D),
                appBar: AppBar(
                  backgroundColor: Color(0xFF1C0F0D),
                  leadingWidth: 90,
                  leading: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/svg/arrow.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ),
                extendBody: true,
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/categories.png",
                        width: 356,
                        height: 557,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        maxLines: 3,
                        "Find the best recipes that the world can provide you also with every step that you can learn to increase your cooking skills.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar:OnboardingViewBottomNavBar()
              );
            }
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
          },
          onPageChanged: (index) =>
              vm.pageChangedCallBack(index, context),
        ),
      ),
    );
  }
}