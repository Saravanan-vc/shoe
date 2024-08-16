import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class MovingText extends StatelessWidget {
  const MovingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 10,
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          RotateAnimatedText(
            'Puma',
            textStyle: textstyle.splascomr(28, splashBlack),
          ),
          RotateAnimatedText(
            'Nike',
            textStyle: textstyle.splascomr(28, splashBlack),
          ),
          RotateAnimatedText(
            'Adidas',
            textStyle: textstyle.splascomr(28, splashBlack),
          ),
          RotateAnimatedText(
            'Reebok',
            textStyle: textstyle.splascomr(28, splashBlack),
          ),
          RotateAnimatedText(
            'Asics',
            textStyle: textstyle.splascomr(28, splashBlack),
          ),
          RotateAnimatedText(
            'Under armour',
            textStyle: textstyle.splascomr(28, splashBlack),
          ),
          RotateAnimatedText(
            'New balance',
            textStyle: textstyle.splascomr(28, splashBlack),
          )
        ],
      ),
    );
  }
}
