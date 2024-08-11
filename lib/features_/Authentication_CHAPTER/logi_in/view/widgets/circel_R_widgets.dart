import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/circle_container.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

class CircelRWidgets extends StatelessWidget {
  const CircelRWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionClass(left: -95.0, top: -45.0).global(
      CircleContainer(
        H: 270,
        W: 270,
        Color: splashBlue,
        Scolor: splashCyan,
      ),
    );
  }
}
