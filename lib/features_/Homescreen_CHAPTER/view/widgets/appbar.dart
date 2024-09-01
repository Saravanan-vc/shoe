import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/features_/cart_chapter/view/pages/cart_screen.dart';

class Appbarcus {
  static AppBar Nike(context) {
    return AppBar(
      backgroundColor: splashWhite,
      leading: const Icon(IconlyLight.category),
      actions: [
        PaddingSpacecustom.only(
          8.sp,
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return const cartScreen();
                  },
                ),
              );
            },
            child: Icon(
              IconlyLight.bag,
              size: 28.sp,
            ),
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
      bottomOpacity: 0,
      surfaceTintColor: splashWhite,
    );
  }
}
