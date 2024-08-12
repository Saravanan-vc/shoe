import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/core/uni_widget_CHAPTER/text_button_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/text_field.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/sign_Screen.dart';

class FormCheckerWidgets extends StatelessWidget {
  const FormCheckerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return PositionClass(
      bottom: 40.0,
      left: 10.0,
    ).global(
      Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: ScreenHW().hight(context) / 2,
          width: ScreenHW().width(context) - 20.w,
          decoration: BoxDecoration(
            color: splashWhite,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              const Spacer(),
              PaddingSpacecustom.horz(
                10,
                TextFieldcustom().emailbar(
                  'E-mail',
                  splashCyan,
                  splashBlue,
                  TextEditingController(),
                  false,
                ),
              ),
              const Spacer(),
              PaddingSpacecustom.horz(
                10,
                TextFieldcustom().emailbar(
                  'Password',
                  splashCyan,
                  splashBlue,
                  TextEditingController(),
                  true,
                ),
              ),
              const Spacer(),
              ButtonCustomizeWidget(
                text: "login",
                H: 40,
                W: 325,
                fs: 28.2,
                textcolor: splashWhite,
                r: 8.0,
                gradientc: true,
                color: splashBlue,
                scolor: splashCyan,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButtonWidget.textButton("Don't have account ?", () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignScreen();
                      },
                    ),
                  );
                }),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
