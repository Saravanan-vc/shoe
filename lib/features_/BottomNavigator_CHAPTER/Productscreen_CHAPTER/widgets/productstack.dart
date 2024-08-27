import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/uni_widget_CHAPTER/Like_favrouit.dart';
import 'package:shoe/core/uni_widget_CHAPTER/backbutton.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Homescreen_CHAPTER/controller/home_controller.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Productscreen_CHAPTER/widgets/appimage.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Productscreen_CHAPTER/widgets/price.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Productscreen_CHAPTER/widgets/sizeofshoe.dart';

class Productstack extends StatelessWidget {
  final int index;

  final dynamic image;
  const Productstack({
    super.key,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
            height: ScreenHW().hight(context),
            width: ScreenHW().width(context),
          ),
          //go back button
          PositionClass(top: 10.0, left: 20.0).global(const Backbutton()),
          //logo image
          PositionClass(top: 10.0, right: ScreenHW().width(context) / 2.38)
              .global(const Appimage()),
          //the backgroud image
          PositionClass(bottom: 190.0, right: -100.0).global(
            SizedBox(
              height: ScreenHW().hight(context) / 1.8,
              child: Transform.rotate(
                angle: 1.5,
                child: Image.asset(
                  'assets/logo/name.png',
                  color: splashBlack2,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),

          //product like
          PositionClass(right: 20.0, top: 5.0).global(
            GetBuilder<HomeController>(
              builder: (logic) {
                return LikeFavrouit(
                  size: 30,
                  ontap: () {
                    switch (index) {
                      case 0:
                        logic.caedFixed[logic.imagescree2].like = logic
                            .favrouit(logic.caedFixed[logic.imagescree2].like);
                      case 1:
                        logic.secondfixed[logic.imagescree].like = logic
                            .favrouit(logic.secondfixed[logic.imagescree].like);
                    }

                    logic.update();
                  },
                  inital: logic.checklike(index),
                );
              },
            ),
          ),
          //produc price
          PositionClass(bottom: 190.0, left: 18.0).global(
            GetBuilder<HomeController>(
              builder: (logic) {
                return Price(
                  price: logic.checkprice(index),
                );
              },
            ),
          ),
          //product name
          SizedBox(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: GetBuilder<HomeController>(
                    builder: (logic) {
                      return Text(
                        logic.checkname(index),
                        style: textstyle.normalhard(40, splashBlack, 0),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          //product image
          SlashShoe(
            startpoint: -220,
            rightmove: 10,
            widget: SizedBox(
              height: 420,
              width: 420,
              child: Transform.rotate(
                angle: 24.5,
                child: GetBuilder<HomeController>(
                  builder: (logic) {
                    return CachedNetworkImage(
                      imageUrl: logic.checkimage(index),
                    );
                  },
                ),
              ),
            ),
          ),
          //selection of size
          PositionClass(top: 130.0, left: 18.0).global(const Sizeofshoe()),
        ],
      ),
    );
  }
}
