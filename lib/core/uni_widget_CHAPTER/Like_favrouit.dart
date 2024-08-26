import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class LikeFavrouit extends StatelessWidget {
  final VoidCallback ontap;
  final int size;
  final bool inital;
  const LikeFavrouit({super.key, required this.ontap, required this.inital,  this.size = 20});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: inital
          ? Icon(
              IconlyBold.heart,
              size: size.sp,
              color: splashBlack,
            )
          : Icon(
              IconlyLight.heart,
              size: size.sp,
            ),
    );
  }
}
