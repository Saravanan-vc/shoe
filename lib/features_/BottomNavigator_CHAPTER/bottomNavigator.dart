import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Homescreen_CHAPTER/view/pages/home_screen.dart';

class Bottomnavigator extends StatefulWidget {
  const Bottomnavigator({super.key});

  @override
  State<Bottomnavigator> createState() => _BottomnavigatorState();
}

class _BottomnavigatorState extends State<Bottomnavigator> {
  bool home = true;
  bool like = false;
  bool cart = false;
  @override
  Widget build(BuildContext context) {
    List body = [const HomeScreen()];
    return Scaffold(
      backgroundColor: splashWhite,
      body: body[0],
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
                  like = false;
                  home = true;
                  cart = false;
                  setState(() {});
                },
                child: home
                    ? Icon(
                        IconlyBold.home,
                        size: 30.sp,
                      )
                    : Icon(
                        IconlyBroken.home,
                        size: 30.sp,
                      ),
              ),
              GestureDetector(
                onTap: () {
                  like = true;
                  home = false;
                  cart = false;
                  setState(() {});
                },
                child: like
                    ? Icon(
                        IconlyBold.heart,
                        size: 30.sp,
                      )
                    : Icon(
                        IconlyBroken.heart,
                        size: 30.sp,
                      ),
              ),
              GestureDetector(
                onTap: () {
                  like = false;
                  home = false;
                  cart = true;
                  setState(() {});
                },
                child: cart
                    ? Icon(
                        IconlyBold.bag,
                        size: 30.sp,
                      )
                    : Icon(
                        IconlyLight.bag,
                        size: 30.sp,
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
