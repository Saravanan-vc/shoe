import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/cart_chapter/cart_controller/cart_controller_buy.dart';
import 'package:shoe/features_/order_histroy/widgets/easy_stepper.dart';
import 'package:shoe/features_/order_histroy/widgets/header_area.dart';

class OrderHistroyTrack extends StatelessWidget {
  const OrderHistroyTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      body: SafeArea(
        child: GetBuilder<CartControllerBuy>(builder: (logic) {
          return Column(
            children: [
              const HeaderArea(),
              const Spacer(),
              logic.trackerpage
                  ?const Expanded(flex: 20, child: EasyStepperf())
                  : Center(
                      child: Text(
                        "No Order Placed",
                        style: textstyle.normalhard(30, splashBlack2, 0),
                      ),
                    ),
              const Spacer(),
            ],
          );
        }),
      ),
    );
  }
}
