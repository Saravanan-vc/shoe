import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/full_screen.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/widgets/set2_s_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/widgets/set_s_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/widgets/textForm_S_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/widgets/text_s_widget.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      body: SafeArea(
        child: Stack(
          children: [
            FullScreen.fulsc(
              ScreenHW().hight(context),
              ScreenHW().width(context),
            ),
            const SetSWidget(),
            const Set2SWidget(),
            const TextSWidget(),
            const TextformSWidget()
          ],
        ),
      ),
    );
  }
}
