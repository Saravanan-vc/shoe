import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize/button_customize_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/cart_chapter/cart_controller/cart_controller_buy.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartControllerBuy>(builder: (logic) {
      return PaddingSpacecustom.horz(
        14,
        SizedBox(
          height: 53.h,
          width: ScreenHW().width(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: textstyle.normalhard(30, splashBlack, 0),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Text(
                              r'$ ',
                              style: textstyle.normal(20, splashBlack, 0),
                            ),
                            Text(
                              '${logic.pricemethod()} ',
                              style: textstyle.normalhard(20, splashBlack, 0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              ButtonCustomizeWidget(
                text: 'Pay',
                H: 40,
                W: 240,
                fs: 30,
                textcolor: splashWhite,
                r: 6,
                onpress: () {},
                color: splashBlack,
              )
            ],
          ),
        ),
      );
    });
  }
}
