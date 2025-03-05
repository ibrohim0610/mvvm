import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrendingRecipeDescHome extends StatelessWidget {
  const TrendingRecipeDescHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "This is a quick overview of the ingredients...",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 13),
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/star.svg',
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "5",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
          ],
        )
      ],
    );
  }
}
