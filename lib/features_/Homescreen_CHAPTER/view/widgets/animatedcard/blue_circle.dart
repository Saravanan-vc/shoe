import 'package:flutter/material.dart';
import 'package:shoe/core/uni_widget_CHAPTER/circle_container.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

class BlueCircleH extends StatelessWidget {
 final Color fcolor;
 final Color scolor;
  const BlueCircleH({super.key, required this.fcolor, required this.scolor});

  @override
  Widget build(BuildContext context) {
    return PositionClass(left: 40.0, top: 100.0).global(
      CircleContainer(
        H: 120,
        W: 120,
        Color: fcolor,
        Scolor: scolor,
      ),
    );
  }
}
