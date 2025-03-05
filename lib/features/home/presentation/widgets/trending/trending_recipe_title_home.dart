import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrendingRecipeTitleHome extends StatelessWidget {
  const TrendingRecipeTitleHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        "Salami and cheese pizza",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 13),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/svg/clock.svg',
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "30 min",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
          ),
        ],
      ),
    ]);
  }
}
