import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';

class headerCart extends StatelessWidget {
  const headerCart({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingSpacecustom.horz(
      14,
      SizedBox(
        child: Text(
          'Your cart',
          style: textstyle.normal(40, splashBlack, 0),
        ),
      ),
    );
  }
}
