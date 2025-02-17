import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';

class ForgotText extends StatelessWidget {
  const ForgotText({super.key});

  @override
  Widget build(BuildContext context) {
    return Splash_hor(
      widget: Text(
        'Forgot',
        style: textstyle.splascomr(80, splashBlack),
      ),
      endpoint: 70,
      startpoint: -400,
      top: 30,
      rote: false,
    );
  }
}
