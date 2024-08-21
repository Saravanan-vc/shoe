import 'package:flutter/material.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

class ShoeDrop extends StatelessWidget {
  final Widget widget;
  const ShoeDrop({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return PositionClass(top: 300.0, right: 0.0).global(
      SlashShoe(
        startpoint: -150.0,
        endpoint: 70,
        rightmove: -280,
        widget: widget,
      ),
    );
  }
}
