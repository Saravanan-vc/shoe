import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';

class HeaderArea extends StatelessWidget {
  const HeaderArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: ScreenHW().width(context),
      child: Center(
        child: Text(
          "Tracker",
          style: textstyle.normal(40, splashBlack, 0),
        ),
      ),
    );
  }
}
