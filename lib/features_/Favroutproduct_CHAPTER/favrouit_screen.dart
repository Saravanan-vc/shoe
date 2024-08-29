import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/widgets/app_bar.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/widgets/listview_of%20products.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/widgets/real_app.dart';

class FavrouitScreen extends StatelessWidget {
  const FavrouitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarfav.Nike(),
      backgroundColor: splashWhite,
      body: const Column(
        children: [
          appBar(),
          Expanded(child: ListviewOf()),
        ],
      ),
    );
  }
}
