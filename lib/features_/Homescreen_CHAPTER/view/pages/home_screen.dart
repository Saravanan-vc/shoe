import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/sizedbox_hight.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/widgets/appbar.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/widgets/card_fixed.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/widgets/card_slider.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/widgets/header_row.dart';
// import 'package:shoe/features_/Homescreen_CHAPTER/widgets/products_chip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      appBar: Appbarcus.Nike(
        context,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderRow(),
              spacehight.hightverys(context),
              const CardSlider(),
              spacehight.hightverys(context),
              CardFixed(),
            ],
          ),
        ),
      ),
    );
  }
}
