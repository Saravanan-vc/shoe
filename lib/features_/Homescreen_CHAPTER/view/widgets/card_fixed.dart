import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';
import 'package:shoe/core/uni_widget_CHAPTER/Like_favrouit.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/controller/home_controller.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/widgets/animatedcard/name_card.dart';
import 'package:shoe/features_/Productscreen_CHAPTER/pages/productscreen.dart';

// ignore: must_be_immutable
class CardFixed extends StatelessWidget {
  CardFixed({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (logic) {
        return PaddingSpacecustom.horz(
          10,
          SizedBox(
            height: 220,
            width: ScreenHW().width(context),
            child: logic.secondfixed.isEmpty
                ? Material(
                    elevation: 5,
                    shadowColor: splashBlack3,
                    color: splashWhite,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 220.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "check your internet connection",
                          style: textstyle.normal(25, splashBlack3, 0),
                        ),
                      ),
                    ),
                  )
                : GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 220,
                            crossAxisCount: 2,
                            crossAxisSpacing: 2),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          logic.boolchange(index);
                          logic.update();
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 590),
                          decoration: BoxDecoration(
                            color: splashTrans,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: logic.check2(index) ? 190 : 210,
                          width: 180,
                          child: Stack(
                            children: [
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
                              // shoe images are below ----------
                              SizedBox(
                                height: 120,
                                width: ScreenHW().hight(context) - 18,
                                child: Transform.rotate(
                                  angle: 24.5,
                                  child: GestureDetector(
                                      onDoubleTap: () {
                                        logic.doubletap(index);
                                        logic.update();
                                      },
                                      child: CachedNetworkImage(
                                          imageUrl: logic.checkimage(index))),
                                ),
                              ),
                              //shoe name and like button are below ----------
                              Visibility(
                                visible: logic.check2(index),
                                child: NameCard(
                                  call: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) {
                                          return Productscreen(
                                            index: index,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  fonts: 24,
                                  name: logic.checkname(index),
                                  endpoint: 10,
                                  startpoint: 8,
                                  top: 170,
                                  rote: false,
                                ),
                              ),

                              Visibility(
                                visible: logic.check2(index),
                                child: Splash_hor(
                                  widget: LikeFavrouit(
                                    ontap: () {
                                      switch (index) {
                                        case 0:
                                          logic.caedFixed[logic.imagescree2]
                                                  .like =
                                              logic.favrouit(logic
                                                  .caedFixed[logic.imagescree2]
                                                  .like);
                                          //this favrouitsystem function is key to add the product in favrouit screen
                                          logic.favrouitsystem(
                                              logic.caedFixed[logic.imagescree2]
                                                  .like,
                                              logic.caedFixed[
                                                  logic.imagescree2]);
                                          logic.popmesageadd(
                                              context,
                                              logic.caedFixed[logic.imagescree2]
                                                  .like);
                                        case 1:
                                          logic.secondfixed[logic.imagescree]
                                                  .like =
                                              logic.favrouit(logic
                                                  .secondfixed[logic.imagescree]
                                                  .like);
                                          //this favrouitsystem function is key to add the product in favrouit screen
                                          logic.favrouitsystem(
                                              logic
                                                  .secondfixed[logic.imagescree]
                                                  .like,
                                              logic.secondfixed[
                                                  logic.imagescree]);
                                          logic.popmesageadd(
                                              context,
                                              logic
                                                  .secondfixed[logic.imagescree]
                                                  .like);
                                      }

                                      logic.update();
                                    },
                                    inital: logic.checklike(index),
                                  ),
                                  endpoint: 10,
                                  top: 172,
                                  startpoint: 8,
                                  right: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        );
      },
    );
  }
}
