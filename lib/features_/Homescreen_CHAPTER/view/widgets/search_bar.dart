import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';

class SearchBarC extends StatelessWidget {
  const SearchBarC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: ScreenHW().width(context) - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [splashBlue, splashCyan],
        ),
      ),
      child: PaddingSpacecustom.horz(
        10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Search',
              style: textstyle.splascomr(30, splashWhite),
            ),
            Icon(
              IconlyBroken.search,
              color: splashWhite,
            ),
          ],
        ),
      ),
    );
  }
}
