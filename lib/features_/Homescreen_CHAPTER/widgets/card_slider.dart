import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/widgets/animatedcard/animated_card.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      width: 1.w,
      child: PaddingSpacecustom.horz(
        10,
        Row(
          children: [
            SizedBox(
              height: 250.h,
              width: 100.w,
              child: Center(
                child: RotatedBox(
                  quarterTurns: 7,
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText(
                        'Puma',
                        textStyle: textstyle.movingtext(70, splashBlue),
                      ),
                      RotateAnimatedText(
                        'Nike',
                        textStyle: textstyle.movingtext(70, splashCyan),
                      ),
                      RotateAnimatedText(
                        'Adidas',
                        textStyle: textstyle.movingtext(70, splashBlue),
                      ),
                      RotateAnimatedText(
                        'Reebok',
                        textStyle: textstyle.movingtext(70, splashCyan),
                      ),
                      RotateAnimatedText(
                        'Asics',
                        textStyle: textstyle.movingtext(70, splashBlue),
                      ),
                      RotateAnimatedText(
                        'Under armour',
                        textStyle: textstyle.movingtext(60, splashCyan),
                      ),
                      RotateAnimatedText(
                        'New balance',
                        textStyle: textstyle.movingtext(70, splashBlue),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: CarouselSlider(
                items: const [
                  AnimatedCard(
                    imagep: 'assets/shoes4.png',
                  ),
                  AnimatedCard(
                    // we want to as widget to the tree
                    imagep: 'assets/shoes4.png',
                  ),
                ],
                options: CarouselOptions(
                    viewportFraction: 1,
                    height: 2248.h,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    pageSnapping: true,
                    disableCenter: true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
