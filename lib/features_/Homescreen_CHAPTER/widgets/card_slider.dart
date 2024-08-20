import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/core/uni_widget_CHAPTER/ui_property/proudts_name.dart';
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
                        textStyle: textstyle.movingtext(70, splashBlack),
                      ),
                      RotateAnimatedText(
                        'Nike',
                        textStyle: textstyle.movingtext(70, splashBlack),
                      ),
                      RotateAnimatedText(
                        'Adidas',
                        textStyle: textstyle.movingtext(70, splashBlack),
                      ),
                      RotateAnimatedText(
                        'Reebok',
                        textStyle: textstyle.movingtext(70, splashBlack),
                      ),
                      RotateAnimatedText(
                        'Asics',
                        textStyle: textstyle.movingtext(70, splashBlack),
                      ),
                      RotateAnimatedText(
                        'Under armour',
                        textStyle: textstyle.movingtext(60, splashBlack),
                      ),
                      RotateAnimatedText(
                        'New balance',
                        textStyle: textstyle.movingtext(70, splashBlack),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: CarouselSlider(
                items: [
                  AnimatedCard(
                    name: productsname[0].toUpperCase(),
                    widgetshoe: SizedBox(
                        height: 180,
                        width: ScreenHW().hight(context) - 70,
                        child: Image.asset('assets/shoes4.png')),
                  ),
                  AnimatedCard(
                    name: productsname[1].toUpperCase(),
                    widgetshoe: SizedBox(
                      height: 120,
                      width: ScreenHW().hight(context) - 30,
                      child: Transform.rotate(
                        angle: 24.7,
                        child: Image.asset('assets/blue1.png'),
                      ),
                    ),
                  ),
                  AnimatedCard(
                    name: productsname[2].toUpperCase(),
                    widgetshoe: SizedBox(
                      height: 130,
                      width: ScreenHW().hight(context) - 30,
                      child: Transform.rotate(
                        angle: 52.99,
                        child: Image.asset('assets/green1.png'),
                      ),
                    ),
                  ),
                  AnimatedCard(
                    name: productsname[2].toUpperCase(),
                    widgetshoe: SizedBox(
                      height: 190,
                      width: ScreenHW().hight(context) - 95,
                      child: Transform.rotate(
                        angle: 24.7,
                        child: Image.asset('assets/jrodan.png'),
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    scrollPhysics: AlwaysScrollableScrollPhysics(),
                    viewportFraction: 1,
                    height: 2248.h,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    disableCenter: true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
