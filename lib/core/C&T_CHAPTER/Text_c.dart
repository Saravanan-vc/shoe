import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class textstyle {
  static TextStyle text_form(double fs, dynamic color) {
    return TextStyle(
      fontSize: fs.sp,
      fontFamily: 'Simple_f',
      fontWeight: FontWeight.w600,
      color: color,

    );
  }

  static TextStyle splascomr(double fs, dynamic color) {
    return TextStyle(
      fontSize: fs.sp,
      fontFamily: 'Corm_f',
      fontWeight: FontWeight.w600,
      color: color,
    );
  }
   static TextStyle splasHi(double fs, dynamic color,double hight) {
    return TextStyle(
      fontSize: fs.sp,
      fontFamily: 'Corm_f',
      fontWeight: FontWeight.w600,
      color: color,
      height: hight,
    );
  }

  static TextStyle movingtext(double fs, dynamic color) {
    return TextStyle(
      fontSize: fs.sp,
      fontFamily: 'p_show',
      fontWeight: FontWeight.w600,
      color: color,
    );
  }
}
