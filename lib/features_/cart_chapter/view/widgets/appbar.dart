import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class Appbarfavcus {
  static AppBar Nike(context) {
    return AppBar(
      backgroundColor: splashWhite,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(IconlyLight.arrow_left_2),
      ),
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
