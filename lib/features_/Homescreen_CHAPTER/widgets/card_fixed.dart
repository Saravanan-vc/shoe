import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class CardFixed extends StatelessWidget {
  const CardFixed({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8),
          height: 80.h,
          width: 80.w,
          color: splashRed,
        );
      },
    );
  }
}
