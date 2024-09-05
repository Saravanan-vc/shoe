import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/cart_chapter/cart_controller/cart_controller_buy.dart';
import 'package:shoe/features_/cart_chapter/view/widgets/appbar.dart';
import 'package:shoe/features_/cart_chapter/view/widgets/cart_list.dart';
import 'package:shoe/features_/cart_chapter/view/widgets/header.dart';
import 'package:shoe/features_/cart_chapter/view/widgets/total_price.dart';

class cartScreen extends StatelessWidget {
  const cartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartControllerBuy>(builder: (logic) {
      return Scaffold(
        backgroundColor: splashWhite,
        appBar: Appbarfavcus.Nikeca(context),
        body: cartproduct.isEmpty
            ? Get.isSnackbarOpen
                ? Center(
                    child: Icon(
                    CupertinoIcons.wifi_slash,
                    size: 100.sp,
                    color: splashBlack2,
                  ))
                : Center(
                    child: Icon(
                    IconlyLight.bag_2,
                    size: 80.h,
                    color: splashBlack2,
                  ))
            : const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerCart(),
                  Expanded(child: cartList()),
                  TotalPrice(),
                ],
              ),
      );
    });
  }
}
