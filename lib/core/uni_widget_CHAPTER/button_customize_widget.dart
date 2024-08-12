import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';

class ButtonCustomizeWidget extends StatelessWidget {
  final String text;
  final int H;
  final int W;
  final dynamic color;
  final dynamic textcolor;
  final double r;
  final bool gradientc;
  final dynamic scolor;
  final double fs;
  final VoidCallback onpress;
  const ButtonCustomizeWidget({
    super.key,
    required this.text,
    required this.H,
    required this.W,
    required this.fs,
    this.color,
    required this.textcolor,
    required this.r,
    this.gradientc = false,
    this.scolor,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress ,
      child: Container(
        decoration: BoxDecoration(
          color: gradientc ? null : color,
          borderRadius: BorderRadius.circular(r),
          gradient: gradientc
              ? LinearGradient(
                  colors: [color, scolor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
        ),
        width: W.w,
        height: H.h,
        child: Center(
          child: Text(
            text,
            style: textstyle.splascomr(fs, textcolor),
          ),
        ),
      ),
    );
  }
}
