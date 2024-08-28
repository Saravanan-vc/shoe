import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class Appimage extends StatelessWidget {
  const Appimage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: Image.asset(
        'assets/logo/nike.png',
        color: splashBlack3,
      ),
    );
  }
}
