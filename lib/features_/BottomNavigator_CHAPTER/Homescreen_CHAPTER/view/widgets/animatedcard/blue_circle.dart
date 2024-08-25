import 'package:flutter/material.dart';
import 'package:shoe/core/uni_widget_CHAPTER/circle_container.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

class BlueCircleH extends StatelessWidget {
  final Color fcolor;
  final Color scolor;
  final double left;
  final double top;
  const BlueCircleH({
    super.key,
    required this.fcolor,
    required this.scolor,
    this.left = 40.0,
    this.top = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return PositionClass(left: left, top: top).global(
      CircleContainer(
        H: 120,
        W: 120,
        Color: fcolor,
        Scolor: scolor,
      ),
    );
  }
}
