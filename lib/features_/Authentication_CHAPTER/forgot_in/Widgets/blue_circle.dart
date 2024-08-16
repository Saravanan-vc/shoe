import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';
import 'package:shoe/core/uni_widget_CHAPTER/circle_container.dart';

class BlueCircle extends StatelessWidget {
  const BlueCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Splash_hor(
      widget: CircleContainer(
          H: 170, W: 170, Color: splashCyan, Scolor: splashBlue),
      endpoint: -80,
      startpoint: -400,
      top: 10,
      rote: false,
    );
  }
}
