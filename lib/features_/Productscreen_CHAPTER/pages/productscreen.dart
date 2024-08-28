import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/Productscreen_CHAPTER/widgets/productstack.dart';

class Productscreen extends StatelessWidget {
  final int index;

  final dynamic Image;
  const Productscreen(
      {super.key,
      required this.Image,
      required this.index,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      body: Productstack(
        index: index,
      
        image: Image,
      ),
    );
  }
}
