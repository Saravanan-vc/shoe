import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/full_screen.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/Widgets/blue_circle.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/Widgets/forgot_Text.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/Widgets/moving_text.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/Widgets/password_Text.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/pages/log_screen.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      body: SafeArea(
        child: Stack(
          children: [
            FullScreen.fulsc(
                ScreenHW().hight(context), ScreenHW().width(context)),
            const BlueCircle(),
            const ForgotText(),
            const PasswordText(),
            const MovingText(),
            Positioned(
                top: 300,
                left: 150,
                child: InkWell(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LogScreen())),
                    child: Icon(IconlyBold.arrow_left_2)))
          ],
        ),
      ),
    );
  }
}
