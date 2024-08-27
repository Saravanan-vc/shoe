import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';

class Appbarcus {
  static AppBar Nike(){
    return AppBar(
        backgroundColor: splashWhite,
        leading: const Icon(IconlyLight.category),
        
        actions: [
          PaddingSpacecustom.only(
            8.sp,
            Icon(
              IconlyLight.bag,
              size: 28.sp,
            ),
          )
        ],
        title: SizedBox(
          height: 20.h,
          child: Image.asset(
            'assets/logo/nike.png',
            color: splashBlack3,
          ),
        ),
        centerTitle: true,
      );
  }
}