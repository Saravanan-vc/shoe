import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';

class Eventcard extends StatelessWidget {
  final bool ismidel;
  final String image;
  final String contant;
  const Eventcard(
      {super.key,
      required this.ismidel,
      required this.contant,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ismidel ? splashBlack : splashBlack3,
          borderRadius: BorderRadius.circular(8)),
      height: 80.h,
      width: 90.w,
      margin: EdgeInsets.only(left: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          PaddingSpacecustom.horz(
            10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  contant,
                  style: textstyle.normal(20, splashWhite, 0),
                ),
                SizedBox(
                    height: 40,
                    child: Image.asset(
                      image,
                      color: splashWhite,
                    ))
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
