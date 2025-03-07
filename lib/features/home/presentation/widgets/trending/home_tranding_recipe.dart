import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/features/home/presentation/widgets/home_title_page.dart';

import '../../manager/home_view_model.dart';

class HomeTrendingRecipe extends StatelessWidget {
  const HomeTrendingRecipe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var trendingRecipe = context.select((HomeViewModel value) => value.trendingRecipe);
    if (trendingRecipe == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Center(
        child: SizedBox(
          width: 358.w,
          height: 182,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: HomeTitlePage()),
              SizedBox(
                width: double.infinity,
                height: 143,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
                    trendingRecipe.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 7,
                  right: 8,
                  child: Container(
                width: 28,
                height: 29,
                decoration: BoxDecoration(
                  color: AppColors.pink,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/svg/heart.svg",
                    color: AppColors.pinkSub,
                    fit: BoxFit.cover,
                  ),
                ),
              ))

            ],
          ),
        ),
      );
    }
  }
}
