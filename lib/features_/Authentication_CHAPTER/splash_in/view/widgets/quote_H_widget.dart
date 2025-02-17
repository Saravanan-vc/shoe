import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';

class QuoteHWidget extends StatelessWidget {
  const QuoteHWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionClass(left: 60.0, bottom: 200.0).global(
      Text(
        "Throwback  \nto \nFuture",
        style: textstyle.splascomr(30, splashWhite),
      ),
    );
  }
}
