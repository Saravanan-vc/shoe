import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize/button_customize_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize/text_button_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/snackbar.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/view/forgot_screen.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/controller/Login_controller.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/pages/sign_Screen.dart';

class FormCheckerWidgets extends StatelessWidget {
  const FormCheckerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _Key = GlobalKey<FormState>();
    return PositionClass(
      bottom: 40.0,
      left: 10.0,
    ).global(
      Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 2),
          height: ScreenHW().hight(context) / 2,
          width: ScreenHW().width(context) - 20.w,
          decoration: BoxDecoration(
            color: splashWhite,
            borderRadius: BorderRadius.circular(8),
          ),
          child: GetBuilder<LoginController>(builder: (logic) {
            return Form(
              key: _Key,
              child: Column(
                children: [
                  const Spacer(),
                  TextFormField(
                    controller: logic.emailControl,
                    maxLines: 1,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: splashCyan, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: splashBlue,
                          width: 2.0,
                        ),
                      ),
                      label: Text(
                        "Email",
                        style: textstyle.text_form(18, splashBlack),
                      ),
                      suffix: GestureDetector(
                          onTap: () {
                            logic.emailControl.text = '';
                          },
                          child: const Icon(IconlyLight.close_square)),
                    ),
                    style: textstyle.text_form(20, splashBlack),
                    onChanged: (value) {
                      logic.emailControl.text = value.toString().trim();
                    },
                    textInputAction: TextInputAction.next,
                    onTapOutside: (e) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    validator: (value) {
                      var input = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      bool checking = input.hasMatch(value.toString());
                      if (!checking) {
                        return 'Give valid Email ';
                      }
                      return null;
                    },
                  ),
                  const Spacer(),
                  TextFormField(
                    controller: logic.passwordControl,
                    maxLines: 1,
                    obscureText: logic.password,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: splashCyan, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: splashBlue,
                          width: 2.0,
                        ),
                      ),
                      label: Text(
                        "Password",
                        style: textstyle.text_form(18, splashBlack),
                      ),
                      suffix: GestureDetector(
                        onTap: () => logic.loop(),
                        child: logic.password
                            ? const Icon(IconlyLight.password)
                            : const Icon(IconlyBold.password),
                      ),
                    ),
                    style: textstyle.text_form(20, splashBlack),
                    onChanged: (value) {},
                    textInputAction: TextInputAction.next,
                    onTapOutside: (e) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'password not to be null';
                      }
                      if (value.toString().length <= 5) {
                        return 'password is to Shoort';
                      }
                      return null;
                    },
                  ),
                  const Spacer(),
                  ButtonCustomizeWidget(
                    text: "Login",
                    H: 40,
                    W: 325,
                    fs: 28.2,
                    textcolor: splashWhite,
                    r: 8.0,
                    gradientc: true,
                    color: splashBlue,
                    scolor: splashCyan,
                    onpress: () {
                      if (_Key.currentState!.validate()) {
                        logic.Fireauth(
                          logic.emailControl.text,
                          logic.passwordControl.text,
                          context,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBarwidget.errortnotificatioin(
                              context, "Enter the requird values"),
                        );
                      }
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
                            return const ForgotScreen();
                          },
                        ),
                      );
                    }),
                  ),
                  const Spacer(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
