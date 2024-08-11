import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CircleContainer extends StatelessWidget {
  final int H;
  final int W;
  final dynamic Color;
  final dynamic Scolor;

  CircleContainer({
    super.key,
    required this.H,
    required this.W,
    required this.Color,
    required this.Scolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: W.h,
      height: H.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color, Scolor]),
        shape: BoxShape.circle,
      ),
    );
  }
}
