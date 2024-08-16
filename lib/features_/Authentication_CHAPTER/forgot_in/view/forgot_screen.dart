import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/full_screen.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/pages/log_screen.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      appBar: AppBar(
        backgroundColor: splashWhite,
        leading: InkWell(
            onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogScreen(),
                  ),
                ),
            child: const Icon(IconlyLight.arrow_left_2)),
      ),
      body: Stack(
        children: [
          FullScreen.fulsc(
              ScreenHW().hight(context), ScreenHW().width(context)),
          SizedBox(
            height: 25,
            width: 25,
            child: Image.asset('assets/blacks1.png'),
          ),
          Positioned(
            top: 50,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/blue1.png'),
            ),
          ),
          Positioned(
            left: 25,
            top: 35,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/green1.png'),
            ),
          ),
          Positioned(
            left: 50,
            top: 66,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/jrodan.png'),
            ),
          ),
          Positioned(
            top: 36,
            left: 66,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/shoes4.png'),
            ),
          ),
          // lay out
          SizedBox(
            height: 25,
            width: 25,
            child: Image.asset('assets/blacks1.png'),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/blue1.png'),
            ),
          ),
          Positioned(
            right: 25,
            top: 35,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/green1.png'),
            ),
          ),
          Positioned(
            right: 150,
            top: 96,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/jrodan.png'),
            ),
          ),
          Positioned(
            top: 36,
            right: 96,
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/shoes4.png'),
            ),
          ),
        ],
      ),
    );
  }
}
