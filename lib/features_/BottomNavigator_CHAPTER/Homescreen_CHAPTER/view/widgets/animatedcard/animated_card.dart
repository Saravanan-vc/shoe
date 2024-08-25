import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/Like_favrouit.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Homescreen_CHAPTER/view/widgets/animatedcard/blue_circle.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Homescreen_CHAPTER/view/widgets/animatedcard/name_card.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Homescreen_CHAPTER/view/widgets/animatedcard/shoe_drop.dart';

class AnimatedCard extends StatelessWidget {
  final VoidCallback ontap;
  final bool favrouit;
  final Widget widgetshoe;
  final String name;
  final Color fcolor;
  final Color scolor;
  const AnimatedCard(
      {super.key,
      required this.widgetshoe,
      required this.name,
      required this.fcolor,
      required this.scolor,
      required this.ontap,
      required this.favrouit});

  @override
  Widget build(BuildContext context) {
    return PaddingSpacecustom.only(
      9,
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: 230.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Material(
              elevation: 5,
              shadowColor: splashBlack3,
              color: splashWhite,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 255.h,
                width: 180.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            BlueCircleH(
              fcolor: fcolor,
              scolor: scolor,
            ),
            NameCard(
              call: () {},
              fonts: 18,
              name: name,
              endpoint: 10,
              startpoint: -30,
              top: 30,
              rote: false,
            ),
            PositionClass(right: 60.0, top: 6.0).global(
              LikeFavrouit(
                ontap: ontap,
                inital: favrouit,
              ),
            ),
            ShoeDrop(
              widget: widgetshoe,
            ),
          ],
        ),
      ),
    );
  }
}
