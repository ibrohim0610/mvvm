import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/categories/presentation/pages/categories_view_model.dart';
import 'package:mvvm/utils/constants.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key , required this.viedModel});
  final CategoriesViewModel viedModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundDark,
        centerTitle: true,
        leading:
        Center(
          child: SvgPicture.asset("assets/svg/arrow.svg",
            width: 30,
            height: 20,
            fit: BoxFit.cover,
          ),
        ),
        title: const Text(
          "Categories",
          style: TextStyle(
              color: AppColors.redPinkMain,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        actions: const [
          AppBarActionItem(image: "assets/svg/notification.svg"),
          SizedBox(width: 5,),
          AppBarActionItem(image: "assets/svg/search.svg"),
          SizedBox(width: 20,),
        ],
      ),
      body:
      ListenableBuilder(
        listenable: viedModel,
        builder: (context, widget) {
          return ListView.builder(
            padding: const EdgeInsets.only(bottom: 120),
            itemBuilder:
                (context , index)=> GestureDetector(
              onTap: ()=> context.go(
                  '/categories/detail',
                  extra:viedModel.categories[index] ),
              child: Image(
                image: NetworkImage(
                    viedModel.categories[index].image
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.redPinkMain,
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/svg/home.svg", width: 25, height: 22),
              SvgPicture.asset("assets/svg/community.svg", width: 25, height: 22),
              SvgPicture.asset("assets/svg/categories.svg", width: 25, height: 22),
              SvgPicture.asset("assets/svg/profile.svg", width: 25, height: 22),
            ],
          ),
        ),
      ),
    );
  }
}
class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({
    super.key,
    required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(color: AppColors.pink,
          borderRadius: BorderRadius.circular(14),
        ),
        child: SvgPicture.asset(image,
          width: 12,
          height: 18,
          fit: BoxFit.fill,
        )
    );
  }
}


