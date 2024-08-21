import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/core/uni_widget_CHAPTER/ui_property/proudts_name.dart';

class ProductsChip extends StatelessWidget {
  const ProductsChip({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingSpacecustom.horz(
      10,
      SizedBox(
        height: 40.h,
        width: ScreenHW().width(context) - 20,
        child: ListView.builder(
          itemCount: productsname.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return PaddingSpacecustom.only(
              7,
              Chip(
                backgroundColor: splashWhite,
                label: Text(productsname[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
