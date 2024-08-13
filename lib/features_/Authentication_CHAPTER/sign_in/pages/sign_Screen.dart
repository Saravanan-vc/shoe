import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';
import 'package:shoe/core/uni_widget_CHAPTER/circle_container.dart';
import 'package:shoe/core/uni_widget_CHAPTER/full_screen.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      body: SafeArea(
        child: Stack(
          children: [
            FullScreen.fulsc(
              ScreenHW().hight(context),
              ScreenHW().width(context),
            ),
            SlashShoe(
              startpoint: -200,
              rightmove: 26,
              endpoint: 11,
              widget: CircleContainer(
                W: 280,
                H: 280,
                Color: splashBlue,
                Scolor: splashCyan,
              ),
            ),
            Splash_hor(
              widget: SizedBox(
                height: 130.h,
                width: 210.w,
                child: Image.asset('assets/blue1.png'),
              ),
              endpoint: ScreenHW().width(context) / 4.8,
              startpoint: -100,
            ),
            SlashShoe(
                startpoint: -200,
                rightmove: 76,
                endpoint: 145,
                widget: Text(
                  "Good to see you",
                  style: textstyle.splascomr(40, splashBlack),
                )),
            Splash_hor(
              widget: SizedBox(
                height: 130.h,
                width: 210.w,
                child: Image.asset('assets/green1.png'),
              ),
              endpoint: ScreenHW().width(context) / 4.8,
              startpoint: -100,
              top: 180,
              rote: false,
            ),
          ],
          //hey dont forgot to make it spaerate 
        ),
      ),
    );
  }
}
