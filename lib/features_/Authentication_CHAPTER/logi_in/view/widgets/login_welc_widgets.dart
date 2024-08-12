import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

class LoginWelcWidgets extends StatelessWidget {
  const LoginWelcWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionClass(left: 0.0).global(
      SlashShoe(
        startpoint: -30,
        endpoint: 100,
        rightmove: 223,
        widget: Text(
          'Welcom Back',
          style: textstyle.splas_Loging(30,splashBlack),
        ),
      ),
    );
  }
}
