import 'package:flutter/material.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

// ignore: must_be_immutable
class SlashShoe extends StatelessWidget {
  Widget widget;
  double endpoint;
  double rightmove;
  double startpoint;
  SlashShoe({
    super.key,
    required this.widget,
    this.endpoint = 100,
    this.rightmove = -200,
    this.startpoint = -30,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: startpoint, end: endpoint),
      duration: const Duration(milliseconds: 1500),
      curve: Curves.fastOutSlowIn,
      builder: (context, value, child) {
        return PositionClass(top: value, right: rightmove).global(widget);
      },
    );
  }
}
