import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class TextButtonWidget {
  static TextButton textButton(String text, VoidCallback onpress) {
    return TextButton(
        onPressed: onpress,
        child: Text(
          text,
          style: textstyle.splascomr(18, splashBlue),
        ));
  }
}
