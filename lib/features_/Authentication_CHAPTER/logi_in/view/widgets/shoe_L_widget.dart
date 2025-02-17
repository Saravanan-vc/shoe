import 'package:flutter/material.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';

class ShoeLWidget extends StatelessWidget {
  const ShoeLWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionClass(top: 300.0, right: 0.0).global(
      SlashShoe(
        startpoint: -150.0,
        endpoint: 100,
        rightmove: -200,
        widget: SizedBox(
          height: 200,
          width: ScreenHW().hight(context) - 90,
          child: Transform.rotate(
            angle: 25.5,
            child: Image.asset(
              'assets/jrodan.png',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
