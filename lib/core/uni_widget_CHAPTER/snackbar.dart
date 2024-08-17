import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class SnackBarwidget {
  static SnackBar correctnotificatioin(context, String subtext) {
    return SnackBar(
      elevation: 0,
      duration: const Duration(milliseconds: 1150),
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.endToStart,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height - 120,
          left: 10,
          right: 10),
      content: Container(
        child: Row(
          children: [
            SizedBox(
              height: 55,
              width: 55,
              child: Image.asset("assets/logo/puma.png"),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sucessfully',
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
      duration: const Duration(milliseconds: 1150),
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.endToStart,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height - 120,
          left: 10,
          right: 10),
      content: Container(
        child: Row(
          children: [
            SizedBox(
              height: 55,
              width: 55,
              child: Image.asset("assets/logo/puma.png"),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Error',
                    style: textstyle.text_form(18.1, splashRed),
                  ),
                  Text(
                    subtext,
                    style: textstyle.text_form(14.1, splashRed),
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
