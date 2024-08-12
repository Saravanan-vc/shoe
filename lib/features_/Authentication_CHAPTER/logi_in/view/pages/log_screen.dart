import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/full_screen.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/widgets/circel_R_widgets.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/widgets/form_checker_widgets.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/widgets/login_txt_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/widgets/login_welc_widgets.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/widgets/shoe_L_widget.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({super.key});

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
            const CircelRWidgets(),
            LoginTxtWidget(),
            const LoginWelcWidgets(),
            const ShoeLWidget(),
            const FormCheckerWidgets(),
          ],
        ),
      ),
    );
  }
}
