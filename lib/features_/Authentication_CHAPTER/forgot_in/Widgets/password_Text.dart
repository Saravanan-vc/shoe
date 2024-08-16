import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';

class PasswordText extends StatelessWidget {
  const PasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Splash_hor(
      widget: Text(
        'Password',
        style: textstyle.splascomr(25, splashBlack),
      ),
      endpoint: 80,
      startpoint: -400,
      top: 100,
      rote: false,
    );
  }
}
