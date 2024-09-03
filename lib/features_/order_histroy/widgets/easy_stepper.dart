import 'package:flutter/material.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/features_/order_histroy/widgets/timelinechart.dart';

class EasyStepperf extends StatelessWidget {
  const EasyStepperf({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingSpacecustom.horz(
      30,
      ListView(
        children: const [
          Timelinechart(
            isfirst: true,
            islast: false,
            ismidel: true,
            contant: "ORDER PLACED",
            image: "assets/logo/orderplaced.png",
          ),
          Timelinechart(
            isfirst: false,
            islast: false,
            ismidel: true,
            contant: "CONFRIM ORDER",
            image: "assets/logo/confrimorder.png",
          ),
          Timelinechart(
            isfirst: false,
            islast: false,
            ismidel: false,
            contant: "ON THE WAY,",
            image: "assets/logo/ontheway.png",
          ),
          Timelinechart(
            isfirst: false,
            islast: true,
            ismidel: false,
            contant: "DELVERED",
            image: "assets/logo/productdel.png",
          ),
        ],
      ),
    );
  }
}
