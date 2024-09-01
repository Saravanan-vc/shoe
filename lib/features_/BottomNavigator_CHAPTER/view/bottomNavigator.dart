import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/controller/bottom_navigator_controller.dart';

class Bottomnavigator extends StatefulWidget {
  const Bottomnavigator({super.key});

  @override
  State<Bottomnavigator> createState() => _BottomnavigatorState();
}

class _BottomnavigatorState extends State<Bottomnavigator> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Bottomnavigatorcontroller>(builder: (logic) {
      return Scaffold(
        backgroundColor: splashWhite,
        body: logic.body[logic.indexfs],
        bottomNavigationBar: PaddingSpacecustom.horz(
          10,
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 50.h,
            width: ScreenHW().width(context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    logic.updateindexhome(0);
                    logic.indexchange(0);
                  },
                  child: logic.indexhome[0]
                      ? Icon(
                          IconlyBold.home,
                          size: 30.sp,
                        )
                      : Icon(
                          IconlyBroken.home,
                          size: 30.sp,
                          color: splashBlack3,
                        ),
                ),
                GestureDetector(
                  onTap: () {
                    logic.updateindexhome(1);
                    logic.indexchange(1);
                  },
                  child: logic.indexhome[1]
                      ? Icon(
                          IconlyBold.bag,
                          size: 30.sp,
                        )
                      : Icon(
                          IconlyLight.bag,
                          size: 30.sp,
                          color: splashBlack3,
                        ),
                ),
                GestureDetector(
                  onTap: () {
                    logic.updateindexhome(2);
                    logic.indexchange(2);
                  },
                  child: logic.indexhome[2]
                      ? Icon(
                          IconlyBold.heart,
                          size: 30.sp,
                        )
                      : Icon(
                          IconlyBroken.heart,
                          size: 30.sp,
                          color: splashBlack3,
                        ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
