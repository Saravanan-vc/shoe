import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';

import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/favrouit_controller.dart';

class ListviewOf extends StatelessWidget {
  const ListviewOf({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavrouitController>(builder: (logic) {
      return ListView.builder(
        itemCount: nameproductfa.length,
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
                          imageUrl: '${nameproductfa[index].image}'),
                    ),
                  ),
                ),
                //product text
                PositionClass(left: 180.0, top: 60.0).global(
                  Text(
                    nameproductfa[index].name,
                    style: textstyle.normalhard(25, splashBlack, 0),
                  ),
                ),
                PositionClass(left: 180.0, top: 85.0).global(
                  Text(
                    r"$",
                    style: textstyle.normal(20, splashBlack, 0),
                  ),
                ),
                PositionClass(left: 195.0, top: 82.0).global(
                  Text(
                    "${nameproductfa[index].price}",
                    style: textstyle.normalhard(25, splashBlack, 0),
                  ),
                ),
                // PositionClass(right: 38.0, top: 18.0).global(
                //   GestureDetector(
                //     onTap: () {
                //       logic.checklike(1);
                //       logic.clearproduct(index);
                //       logic.update();
                //     },
                //     child: const Icon(
                //       IconlyBold.heart,
                //       size: 30,
                //     ),
                //   ),
                // ),
              ],
            ),
          );
        },
      );
    });
  }
}
