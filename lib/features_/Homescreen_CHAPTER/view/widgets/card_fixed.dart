import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/widgets/animatedcard/blue_circle.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/widgets/animatedcard/name_card.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/widgets/animatedcard/shoe_drop.dart';

// ignore: must_be_immutable
class CardFixed extends StatefulWidget {
  CardFixed({super.key});

  @override
  State<CardFixed> createState() => _CardFixedState();
}

class _CardFixedState extends State<CardFixed> {
  bool check = true;
  int doubletap = 0;
  List image = ['assets/NB.png', 'assets/SB.png', 'assets/jrodan.png'];
  List name = ['Die Mood', 'SB Dunk', 'Air Jrodan'];

  @override
  Widget build(BuildContext context) {
    return PaddingSpacecustom.horz(
      10,
      GestureDetector(
        onTap: () {
          check = !check;
          setState(() {});
        },
        onDoubleTap: () {
          if (doubletap == 2) {
            doubletap = 0;
          } else {
            doubletap = doubletap + 1;
          }
          setState(() {});
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 590),
          decoration: BoxDecoration(
            color: splashWhite,
            borderRadius: BorderRadius.circular(8),
          ),
          height: check ? 190 : 230,
          width: 180,
          child: Stack(
            children: [
              // BlueCircleH(
              //   top: -18,
              //   left: -18,
              //   fcolor: splashBlack,
              //   scolor: splashBlack2,
              // ),
              Transform.rotate(
                angle: 1.5,
                child: SizedBox(
                  height: 180,
                  child: Image.asset(
                    'assets/logo/name.png',
                    color: splashBlack,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              ShoeDrop(
                top: 200,
                endpoint: 40,
                widget: SizedBox(
                  height: 100,
                  width: ScreenHW().hight(context) - 90,
                  child: Transform.rotate(
                    angle: 25.7,
                    child: Image.asset(image[doubletap]),
                  ),
                ),
              ),
              Visibility(
                visible: !check,
                child: NameCard(
                  fonts: 24,
                  name: name[doubletap],
                  endpoint: 10,
                  startpoint: 1,
                  top: 190,
                  rote: false,
                ),
              ),
              Visibility(
                visible: !check,
                child: Splash_hor(
                  widget: const Icon(IconlyLight.heart),
                  endpoint: 10,
                  top: 190,
                  startpoint: -10,
                  right: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// want to make it performance , remmber to make it 
