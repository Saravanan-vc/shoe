import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class SnackBarwidget {
  static SnackBar correctnotificatioin(context, String subtext) {
    return SnackBar(
      elevation: 0,
      duration: const Duration(milliseconds: 1250),
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.endToStart,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.only(left: 10, right: 10),
      content: Container(
        height: 60.h,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              colors: [splashGreen, splashCyan],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 55,
              width: 55,
              child: Image.asset("assets/logo/nike.png"),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sucessfully !!',
                    style: textstyle.text_form(18.1, splashBlack),
                  ),
                  Text(
                    subtext,
                    style: textstyle.text_form(14.1, splashBlack),
                  ),
                ],
              ),
            ),
            const Icon(IconlyLight.close_square),
          ],
        ),
      ),
    );
  }

  static SnackBar errortnotificatioin(context, String subtext) {
    return SnackBar(
      elevation: 0,
      duration: const Duration(milliseconds: 1250),
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.endToStart,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.only(left: 2, right: 2),
      content: Container(
        height: 60.h,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              colors: [splashRed, splashOrange],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 55,
              width: 55,
              child: Image.asset("assets/logo/nike.png"),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '!Oops',
                    style: textstyle.text_form(18.1, splashBlack),
                  ),
                  Text(
                    subtext,
                    style: textstyle.text_form(14.1, splashBlack),
                  ),
                ],
              ),
            ),
            const Icon(IconlyLight.close_square),
          ],
        ),
      ),
    );
  }
}
