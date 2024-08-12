import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaddingSpacecustom {
  static Padding horz(double horz, Widget child) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horz.h),
      child: child,
    );
  }
}
