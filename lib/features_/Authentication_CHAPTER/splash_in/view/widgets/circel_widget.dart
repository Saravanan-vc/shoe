import 'package:flutter/material.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/circle_container.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

class CircelWidget extends StatelessWidget {
  const CircelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionClass(right: -105.0).global(
      SlashShoe(
        startpoint: 200,
        rightmove: -125.0,
        endpoint: 1,
        widget: CircleContainer(
          W: 280,
          H: 280,
          Color: splashBlue,
          Scolor: splashCyan,
        ),
      ),
    );
  }
}
