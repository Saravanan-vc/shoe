import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/Productscreen_CHAPTER/widgets/productscreen2_widgets/product_stack2.dart';

class Productscreen2 extends StatelessWidget {
  final int index;
  const Productscreen2({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      body: ProductStack2(
        index: index,
      ),
    );
  }
}
