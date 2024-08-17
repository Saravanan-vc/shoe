import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize/button_customize_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize/text_button_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/controller/forgot_controller.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/pages/log_screen.dart';

class Formchecker extends StatelessWidget {
  const Formchecker({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _key = GlobalKey<FormState>();
    return PositionClass(top: 240.0, left: 10.0).global(
      Container(
        width: ScreenHW().width(context) - 20.w,
        height: 154.h,
        child: GetBuilder<ForgotController>(
          builder: (logic) {
            return Form(
              key: _key,
              child: Column(
                children: [
                  TextFormField(
                    controller: logic.emailControl,
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
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButtonWidget.textButton(
                      'Remember password',
                      () {
                        Navigator.pushReplacement(

                          context,
                          MaterialPageRoute(
                            
                            builder: (context) => LogScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  ButtonCustomizeWidget(
                    text: "Forgot",
                    H: 40,
                    W: 340,
                    fs: 28.2,
                    textcolor: splashWhite,
                    r: 8,
                    gradientc: true,
                    color: splashBlue,
                    scolor: splashCyan,
                    onpress: () {
                      if (_key.currentState!.validate()) {
                        logic.clearthevalue();
                      }
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
