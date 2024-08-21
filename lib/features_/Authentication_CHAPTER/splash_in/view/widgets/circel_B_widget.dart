import 'package:flutter/material.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/circle_container.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
class CircelBWidget extends StatelessWidget {
  const CircelBWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  PositionClass(right: -105.0).global(
              SlashShoe(
                startpoint: -20,
                rightmove: 135.0,
                endpoint: 400,
                widget: CircleContainer(
                  W: 240,
                  H: 240,
                  Color: splashBlack,
                  Scolor: splashBlack,
                ),
              ),
            );
  }
}