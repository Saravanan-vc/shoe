import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Splash_hor(
      widget: Text(
        'NIKE',
        style: textstyle.splascomr(28, splashBlack),
      ),
      endpoint: 10,
      startpoint: -30,
      top: 30,
      rote: false,
    );
  }
}
