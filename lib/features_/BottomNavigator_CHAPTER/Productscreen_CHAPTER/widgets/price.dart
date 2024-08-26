import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class Price extends StatelessWidget {
  final String price;
  const Price({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              r'$',
              style: textstyle.normal(20, splashBlack, 0),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              price,
              style: textstyle.normalhard(30, splashBlack, 0),
            )
          ],
        ),
        Text(
          'Price',
          style: textstyle.normal(20, splashBlack, -0.01),
        )
      ],
    );
  }
}
