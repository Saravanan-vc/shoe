import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash.dart';
import 'package:shoe/core/uni_widget_CHAPTER/Like_favrouit.dart';
import 'package:shoe/core/uni_widget_CHAPTER/backbutton.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize/button_customize_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/controller/home_controller.dart';
import 'package:shoe/features_/Productscreen_CHAPTER/widgets/appimage.dart';
import 'package:shoe/features_/Productscreen_CHAPTER/widgets/price.dart';
import 'package:shoe/features_/Productscreen_CHAPTER/widgets/sizeofshoe.dart';

class ProductStack2 extends StatelessWidget {
  final int index;

  const ProductStack2({
    super.key,
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
                    logic.products[index].like =
                        logic.favrouit(logic.products[index].like);
                    logic.update();
                  },
                  inital: logic.products[index].like,
                );
              },
            ),
          ),
          //produc price
          PositionClass(bottom: 150.0, left: 18.0).global(
            GetBuilder<HomeController>(
              builder: (logic) {
                return Price(
                  price: '${logic.products[index].price}',
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
                        '${logic.products[index].name}',
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
            endpoint: 110,
            startpoint: -220,
            rightmove: 40,
            widget: SizedBox(
              height: 400,
              width: 400,
              child: Transform.rotate(
                angle: 24.5,
                child: GetBuilder<HomeController>(
                  builder: (logic) {
                    return CachedNetworkImage(
                      imageUrl: '${logic.products[index].image}',
                    );
                  },
                ),
              ),
            ),
          ),
          //selection of size
          PositionClass(top: 130.0, left: 18.0).global(const Sizeofshoe()),
          // add button
          PositionClass(bottom: 150.0, right: 18.0).global(
            GetBuilder<HomeController>(
              builder: (logic) {
                return ButtonCustomizeWidget(
                  color: splashBlack,
                  text: "add",
                  H: 30,
                  W: 90,
                  fs: 20,
                  textcolor: splashWhite,
                  r: 8,
                  onpress: () {
                    logic.addtocart(logic.products[index], context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
