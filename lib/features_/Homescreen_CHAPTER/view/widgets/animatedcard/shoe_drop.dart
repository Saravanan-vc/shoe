import 'package:flutter/material.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

class ShoeDrop extends StatelessWidget {
  final Widget widget;
  final double top;
  final double endpoint;
  const ShoeDrop(
      {super.key, required this.widget, this.endpoint = 90, this.top = 300});

  @override
  Widget build(BuildContext context) {
    return PositionClass(top: top, right: 0.0).global(
      SlashShoe(
        startpoint: -150.0,
        endpoint: endpoint,
        rightmove: -280,
        widget: widget,
      ),
    );
  }
}
