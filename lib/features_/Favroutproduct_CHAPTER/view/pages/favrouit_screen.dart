import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/controller_favrou/favrouit_controller.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/view/widgets/app_bar.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/view/widgets/listview_of%20products.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/view/widgets/real_app.dart';

class FavrouitScreen extends StatelessWidget {
  const FavrouitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarfav.Nike(),
      backgroundColor: splashWhite,
      body: GetBuilder<FavrouitController>(
        builder: (logic) {
          return nameproductfa.isEmpty
              ? Center(
                  child: Icon(
                  IconlyBroken.heart,
                  size: 100.sp,
                  color: splashBlack2,
                ))
              : const Column(
                  children: [
                    appBar(),
                    Expanded(child: ListviewOf()),
                  ],
                );
        },
      ),
    );
  }
}
