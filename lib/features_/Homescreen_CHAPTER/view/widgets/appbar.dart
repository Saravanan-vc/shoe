import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/pages/log_screen.dart';
import 'package:shoe/features_/order_histroy/view/order_histroy_track.dart';

class Appbarcus {
  static AppBar Nike(context,) {
    return AppBar(
      backgroundColor: splashWhite,
      leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const OrderHistroyTrack();
              }));
            },
            child: const Icon(IconlyLight.buy)),
      
      actions: [
        PaddingSpacecustom.only(
          8.sp,
          GestureDetector(
            onTap: () async {
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              sharedPreferences.setBool('login', false);
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return const LogScreen();
                  },
                ),
              );
            },
            child: Icon(
              IconlyBroken.logout,
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
