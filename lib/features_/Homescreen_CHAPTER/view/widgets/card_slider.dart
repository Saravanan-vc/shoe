import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/controller/home_controller.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/widgets/animatedcard/animated_card.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      width: ScreenHW().width(context),
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
                        'HIGH ON TERNDRS',
                        textStyle: textstyle.movingtext(60, splashBlack3),
                      ),
                      RotateAnimatedText(
                        'MASTER PIECE',
                        textStyle: textstyle.movingtext(60, splashBlack3),
                      ),
                      RotateAnimatedText(
                        'CUsTOMISE',
                        textStyle: textstyle.movingtext(70, splashBlack3),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GetBuilder<HomeController>(
                builder: (logic) {
                  return CarouselSlider.builder(
                    itemCount: logic.products.length,
                    itemBuilder: (context, ind, index) {
                      return AnimatedCard(
                        favrouit: logic.unfavrouit,
                        ontap: logic.favrouit,
                        name: logic.products[ind].name!.toUpperCase(),
                        widgetshoe: SizedBox(
                          height: 120,
                          width: ScreenHW().hight(context) - 18,
                          child: Transform.rotate(
                            angle: 24.7,
                            child:
                                Image.network('${logic.products[ind].image}'),
                          ),
                        ),
                        fcolor: splashBlack,
                        scolor: splashBlack3,
                      );
                    },
                    options: CarouselOptions(
                        autoPlayAnimationDuration: const Duration(seconds: 2),
                        scrollPhysics: const AlwaysScrollableScrollPhysics(),
                        viewportFraction: 1,
                        height: 2248.h,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        disableCenter: true),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
