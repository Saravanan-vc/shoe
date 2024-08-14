import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';

class Set2SWidget extends StatelessWidget {
  const Set2SWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Splash_hor(
              widget: SizedBox(
                height: 130.h,
                width: 210.w,
                child: Image.asset('assets/green1.png'),
              ),
              endpoint: ScreenHW().width(context) / 4.8,
              startpoint: -100,
              top: 180,
              rote: false,
            );
  }
}