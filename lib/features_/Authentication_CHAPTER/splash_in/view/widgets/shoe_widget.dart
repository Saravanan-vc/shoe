import 'package:flutter/material.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';

class ShoeWidget extends StatelessWidget {
  const ShoeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionClass(top: 300.0, right: 0.0).global(
      SlashShoe(
        widget: SizedBox(
          height: 320,
          width: ScreenHW().hight(context) - 90,
          child: Image.asset('assets/shoes4.png'),
        ),
      ),
    );
  }
}
