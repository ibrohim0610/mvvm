import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/core.dart';

class HomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 110);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: AppBar(
        backgroundColor: AppColors.beigeColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Dianne",
              style: TextStyle(
                color: AppColors.redPinkMain,
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            Text(
              "What are you cooking today",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          ],
        ),
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
                child: SvgPicture.asset(
                  'assets/svg/notification.svg',
                  width: 12,
                  height: 18,
                ),
              ),
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(14)),
                child: SvgPicture.asset(
                  'assets/svg/search.svg',
                  width: 12,
                  height: 18,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ],
        bottom: HomeAppBarBottomItem(),
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
      height: 40,
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

