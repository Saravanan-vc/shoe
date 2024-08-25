import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingSpacecustom.horz(
      14.w,
      SizedBox(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Collection",
                  style: textstyle.normal(40, splashBlack, 0),
                ),
                PaddingSpacecustom.horz(
                  2,
                  Text(
                    "Nike original 2024",
                    style: textstyle.normal(18, splashBlack3, 0.5),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
