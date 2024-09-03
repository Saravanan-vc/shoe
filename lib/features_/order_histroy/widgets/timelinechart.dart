import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/order_histroy/widgets/eventcard.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Timelinechart extends StatelessWidget {
  final bool isfirst;
  final bool islast;
  final String image;
  final bool ismidel;
  final String contant;
  const Timelinechart(
      {super.key,
      required this.isfirst,
      required this.islast,
      required this.ismidel,
      required this.contant, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TimelineTile(
        indicatorStyle: IndicatorStyle(
            color: ismidel ? splashBlack : splashBlack3,
            width: 30,
            iconStyle: IconStyle(
                iconData: Icons.assignment_turned_in_outlined,
                color: ismidel ? splashWhite : splashBlack2)),
        beforeLineStyle: LineStyle(color: ismidel ? splashBlack : splashBlack3),
        isFirst: isfirst,
        isLast: islast,
        endChild: Eventcard(
          ismidel: ismidel,
          contant: contant,
          image: image,
        ),
      ),
    );
  }
}
