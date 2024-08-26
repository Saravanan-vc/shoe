import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/sizedbox_hight.dart';

class Sizeofshoe extends StatelessWidget {
  const Sizeofshoe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Size',
          style: textstyle.normal(16, splashBlack, 0),
        ),
        SizedBox(
          height: 2.w,
        ),
        Container(
          height: 28.h,
          width: 28.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: splashBlack),
          child: Center(
            child: Text(
              '9',
              style: textstyle.normal(16, splashWhite, 0),
            ),
          ),
        ),
        spacehight.hightverys(context),
        Container(
          height: 28.h,
          width: 28.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: splashBlack),
          child: Center(
            child: Text(
              '9.5',
              style: textstyle.normal(16, splashWhite, 0),
            ),
          ),
        ),
        spacehight.hightverys(context),
        Container(
          height: 28.h,
          width: 28.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: splashBlack),
          child: Center(
            child: Text(
              '10',
              style: textstyle.normal(16, splashWhite, 0),
            ),
          ),
        ),
        spacehight.hightverys(context),
        Container(
          height: 28.h,
          width: 28.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: splashBlack),
          child: Center(
            child: Text(
              '10.5',
              style: textstyle.normal(16, splashWhite, 0),
            ),
          ),
        ),
      ],
    );
  }
}
