import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class CardFixed extends StatelessWidget {
  const CardFixed({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 270,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: splashOrange,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      },
    );
  }
}
