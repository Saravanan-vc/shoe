import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/Productscreen_CHAPTER/widgets/productstack.dart';

class Productscreen extends StatelessWidget {
  final int index;

  const Productscreen(
      {super.key,
    
      required this.index,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      body: Productstack(
        index: index,
       
      ),
    );
  }
}
