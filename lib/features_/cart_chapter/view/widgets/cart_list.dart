import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/cart_chapter/cart_controller/cart_controller_buy.dart';

class cartList extends StatelessWidget {
  const cartList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartControllerBuy>(
      builder: (logic) {
        return ListView.builder(
          itemCount: cartproduct.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 170,
              width: ScreenHW().width(context),
              child: Stack(
                children: [
                  const SizedBox(
                    height: 170,
                  ),
                  //positione for background image
                  PositionClass(left: -40.0).global(
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
                  ),
                  Splash_hor(
                    endpoint: -90,
                    startpoint: 90,
                    widget: SizedBox(
                      height: 80,
                      width: ScreenHW().hight(context) - 18,
                      child: Transform.rotate(
                        angle: 24.5,
                        child: CachedNetworkImage(
                            imageUrl: '${cartproduct[index].image}'),
                      ),
                    ),
                  ),
                  //product text
                  PositionClass(left: 160.0, top: 60.0).global(
                    Text(
                      cartproduct[index].name,
                      style: textstyle.normalhard(25, splashBlack, 0),
                    ),
                  ),
                  PositionClass(left: 160.0, top: 85.0).global(
                    Text(
                      r"$",
                      style: textstyle.normal(20, splashBlack, 0),
                    ),
                  ),
                  PositionClass(left: 175.0, top: 82.0).global(
                    Text(
                      "${cartproduct[index].price}",
                      style: textstyle.normalhard(25, splashBlack, 0),
                    ),
                  ),
                  PositionClass(right: 20.0, top: 60.0).global(GestureDetector(
                    onTap: () {
                      cartproduct[index].cart = false;
                      cartproduct.removeAt(index);
                      logic.update();
                      debugPrint('logic');
                    },
                    child: Container(
                      height: 32.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                        color: splashBlack,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          'R',
                          style: textstyle.normalhard(30, splashWhite, 0),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            );
          },
        );
      },
    );
  }
}
