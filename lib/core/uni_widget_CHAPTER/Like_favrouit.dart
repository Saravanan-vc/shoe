import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class LikeFavrouit extends StatelessWidget {
  final VoidCallback ontap;
  final bool inital;
  const LikeFavrouit({super.key, required this.ontap, required this.inital});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: inital
          ? Icon(
              IconlyBold.heart,
              color: splashBlack,
            )
          : const Icon(IconlyLight.heart),
    );
  }
}
