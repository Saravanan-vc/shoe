import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/full_screen.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/Widgets/blue_circle.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/Widgets/forgot_Text.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/Widgets/form-checker.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/Widgets/moving_text.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/Widgets/password_Text.dart';

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
            const Formchecker(),
          ],
        ),
      ),
    );
  }
}
