import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/features/categories/data/models/categories_model.dart';
import 'package:recipe_app/features/home/presentation/manager/home_view_model.dart';
import 'package:recipe_app/features/home/presentation/widgets/recipe_home_app_bar_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

class HomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewAppBar({
    super.key, required this.title, required this.subtitle,
  });
  final String title, subtitle;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 110);
  @override
  Widget build(BuildContext context) {
    var categories = context.select<HomeViewModel, List<CategoryModel>>((value)=>value.categories);
    var selected = context.select<HomeViewModel, CategoryModel?>((value)=>value.selected);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: AppBar(
        toolbarHeight: 70,
        leadingWidth: double.infinity,
        backgroundColor: AppColors.beigeColor,
        leading:  RecipeHomeAppBarTitle(title: title,subtitle: subtitle,),
        actions: [
          Row(
            spacing: 5,
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(14)),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/svg/notification.svg',
                    width: 12,
                    height: 18,
                  ),
                ),
              ),
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(14)),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/svg/search.svg',
                    width: 14,
                    height: 20,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ],
        bottom: HomeAppBarBottomItem()
      ),
    );
  }
}


class HomeAppBarBottomItem extends StatefulWidget
    implements PreferredSizeWidget {
  const HomeAppBarBottomItem({
    super.key,
  });

  @override
  State<HomeAppBarBottomItem> createState() => _HomeAppBarBottomItemState();

  @override
  Size get preferredSize => const Size(double.infinity, 40);
}

class _HomeAppBarBottomItemState extends State<HomeAppBarBottomItem> {
  final List<String> foods = [
    'Breakfast',
    'Lunch',
    'Dinner',
    'Vegan',
    'Dessert',
    'Drinks',
    'Sea Food'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: foods.map((food) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextButton(
              onPressed: () {},
              child: Text("${food}",style:TextStyle(
                color: AppColors.redPinkMain,
              ),),
            ),
          );
        }).toList(),
      ),
    );
  }
}

