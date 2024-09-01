import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class Appbarfavcus {
  static AppBar Nikeca(context) {
    return AppBar(
      backgroundColor: splashWhite,
      title: SizedBox(
        height: 20.h,
        child: Image.asset(
          'assets/logo/nike.png',
          color: splashBlack3,
        ),
      ),
      centerTitle: true,
      bottomOpacity: 0,
      surfaceTintColor: splashWhite,
    );
  }
}
