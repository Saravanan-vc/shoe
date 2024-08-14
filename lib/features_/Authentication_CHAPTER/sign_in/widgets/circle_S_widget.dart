import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/uni_widget_CHAPTER/circle_container.dart';
class CircleSWidget extends StatelessWidget {
  const CircleSWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SlashShoe(
              startpoint: -200,
              rightmove: 26,
              endpoint: 11,
              widget: CircleContainer(
                W: 280,
                H: 280,
                Color: splashBlue,
                Scolor: splashCyan,
              ),
            );
  }
}