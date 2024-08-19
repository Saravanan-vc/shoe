import 'package:flutter/material.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';

class ShoeDrop extends StatelessWidget {
  final dynamic image;
  const ShoeDrop({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return PositionClass(top: 300.0, right: 0.0).global(
      SlashShoe(
        startpoint: -150.0,
        endpoint: 70,
        rightmove: -280,
        widget: SizedBox(
            height: 160,
            width: ScreenHW().hight(context) - 90,
            child: Image.asset(image)),
      ),
    );
  }
}
