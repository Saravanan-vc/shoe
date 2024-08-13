import 'package:flutter/material.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

// ignore: must_be_immutable
class Splash_hor extends StatelessWidget {
  Widget widget;
  double endpoint;
  double top;
  dynamic right;
  double startpoint;
  dynamic left;
  bool rote;
  Splash_hor({
    this.left,
    super.key,
    required this.widget,
    this.endpoint = 100,
    this.top = 20,
    this.startpoint = -30,
    this.right,
    this.rote = true,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: startpoint, end: endpoint),
      duration: const Duration(milliseconds: 1500),
      curve: Curves.fastOutSlowIn,
      builder: (context, value, child) {
        return PositionClass(
          top: top,
          right: rote ? value : right,
          left: rote ? left : value,
        ).global(widget);
      },
    );
  }
}
