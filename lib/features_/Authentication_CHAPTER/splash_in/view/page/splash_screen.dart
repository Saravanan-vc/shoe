import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/full_screen.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/pages/log_screen.dart';
import 'package:shoe/features_/Authentication_CHAPTER/splash_in/view/widgets/circel_B_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/splash_in/view/widgets/circel_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/splash_in/view/widgets/quote_H_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/splash_in/view/widgets/shoe_widget.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/bottomNavigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: splashWhite,
      body: SafeArea(
        child: Stack(
          children: [
            FullScreen.fulsc(h, w),
            const CircelWidget(), // blue circle
            const CircelBWidget(), // black circle
            const ShoeWidget(), // shoe image
            const QuoteHWidget(), // text area
          ],
        ),
      ),
    );
  }

  void start() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool? login = await preferences.getBool('login');
    Timer(
      const Duration(milliseconds: 3500),
      () => login == true
          ? Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const Bottomnavigator(),
              ),
            )
          : Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const LogScreen(),
              ),
            ),
    );
  }
}
