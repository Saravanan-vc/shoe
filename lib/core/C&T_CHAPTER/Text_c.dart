import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class textstyle {
  static TextStyle splas_Loging(double fs, dynamic color) {
    return TextStyle(
      fontSize: fs.sp,
      fontFamily: 'Simple_f',
      fontWeight: FontWeight.w600,
      color: color,
    );
  }
}
