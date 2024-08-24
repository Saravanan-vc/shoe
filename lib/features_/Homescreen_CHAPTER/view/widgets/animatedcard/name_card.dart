import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/animation_CHAPTER/animation_splash_ho.dart';

class NameCard extends StatelessWidget {
  final String name;
  final double endpoint;
  final double startpoint;
  final double top;
  final bool rote;
  final double fonts;
  final VoidCallback call;
  const NameCard(
      {super.key,
      required this.name,
      required this.endpoint,
      required this.startpoint,
      required this.top,
      required this.rote,
      required this.fonts,
      required this.call });

  @override
  Widget build(BuildContext context) {
    return Splash_hor(
      widget: GestureDetector(
        onTap: call,
        child: Text(
          name,
          style: textstyle.normal(fonts, splashBlack, 0),
        ),
      ),
      endpoint: endpoint,
      startpoint: startpoint,
      top: top,
      rote: rote,
    );
  }
}
