import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/core/uni_widget_CHAPTER/text_button_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/text_field.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/pages/sign_Screen.dart';

class FormCheckerWidgets extends StatelessWidget {
  const FormCheckerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Spacer(),
                GetBuilder<TextFieldcustom>(
                  builder: (logic) {
                    return PaddingSpacecustom.horz(
                      10,
                      logic.emailbar(
                        IconlyLight.close_square,
                        'E-mail',
                        splashCyan,
                        splashBlue,
                        logic.Emailcontroller,
                        false,
                        (val) {
                          if (val!.isEmpty) {
                            return 'Given Email is not validate';
                          }
                          return null;
                        },
                        true,
                      ),
                    );
                  },
                ),
                const Spacer(),
                GetBuilder<TextFieldcustom>(
                  builder: (logic) {
                    return PaddingSpacecustom.horz(
                      10,
                      logic.emailbar(
                        IconlyLight.password,
                        'Password',
                        splashCyan,
                        splashBlue,
                        logic.passwordcontroller,
                        true,
                        (val) {
                          if (val!.isEmpty) {
                            return 'Give password to verify';
                          }
                          return null;
                        },
                        false,
                      ),
                    );
                  },
                ),
                const Spacer(),
                GetBuilder<TextFieldcustom>(
                  builder: (logic) {
                    return ButtonCustomizeWidget(
                      text: "login",
                      H: 40,
                      W: 325,
                      fs: 28.2,
                      textcolor: splashWhite,
                      r: 8.0,
                      gradientc: true,
                      color: splashBlue,
                      scolor: splashCyan,
                      onpress: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return const SignScreen();
                              },
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButtonWidget.textButton(
                    "Don't have account ?",
                    () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignScreen();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButtonWidget.textButton("Forgot password", () {
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
      ),
    );
  }
}
