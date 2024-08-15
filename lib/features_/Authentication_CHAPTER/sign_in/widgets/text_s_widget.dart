import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';

class TextSWidget extends StatelessWidget {
  const TextSWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SlashShoe(
      startpoint: -200,
      rightmove: 110,
      endpoint: 85,
      widget: Text(
        "Sign",
        style: textstyle.splascomr(100, splashWhite),
      ),
    );
  }
}
