import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/sizedbox_hight.dart';
import 'package:shoe/features_/Productscreen_CHAPTER/controller/productscreen.dart';

class Sizeofshoe extends StatelessWidget {
  const Sizeofshoe({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Productscreencontroller>(builder: (logic) {
      return Column(
        children: [
          Text(
            'Size',
            style: textstyle.normal(14, splashBlack, 0),
          ),
          SizedBox(
            height: 2.w,
          ),
          GestureDetector(
            onTap: () {
              logic.sizetouched(1);
            },
            child: Container(
              height: 28.h,
              width: 28.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: logic.first ? splashBlack : splashWhite),
              child: Center(
                child: Text(
                  '9',
                  style: textstyle.normal(
                      14, logic.first ? splashWhite : splashBlack, 0),
                ),
              ),
            ),
          ),
          spacehight.hightverys(context),
          GestureDetector(
            onTap: () {
              logic.sizetouched(2);
            },
            child: Container(
              height: 28.h,
              width: 28.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: logic.second ? splashBlack : splashWhite),
              child: Center(
                child: Text(
                  '9.5',
                  style: textstyle.normal(
                      14, logic.second ? splashWhite : splashBlack, 0),
                ),
              ),
            ),
          ),
          spacehight.hightverys(context),
          GestureDetector(
            onTap: () {
              logic.sizetouched(3);
            },
            child: Container(
              height: 28.h,
              width: 28.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: logic.third ? splashBlack : splashWhite),
              child: Center(
                child: Text(
                  '10',
                  style: textstyle.normal(
                      14, logic.third ? splashWhite : splashBlack, 0),
                ),
              ),
            ),
          ),
          spacehight.hightverys(context),
          GestureDetector(
            onTap: () {
              logic.sizetouched(4);
            },
            child: Container(
              height: 28.h,
              width: 28.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: logic.fourth ? splashBlack : splashWhite),
              child: Center(
                child: Text(
                  '10.5',
                  style: textstyle.normal(
                      14, logic.fourth ? splashWhite : splashBlack, 0),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
