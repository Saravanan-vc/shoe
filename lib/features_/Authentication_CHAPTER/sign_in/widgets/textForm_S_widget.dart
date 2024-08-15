import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/core/uni_widget_CHAPTER/text_button_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/Global_controller/Sign_login_Contoller.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/pages/log_screen.dart';

class TextformSWidget extends StatelessWidget {
  const TextformSWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _Key = GlobalKey<FormState>();
    return PositionClass(bottom: 40.0, left: 10.0).global(
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
          child: GetBuilder<SignLoginContoller>(builder: (logic) {
            return Form(
              key: _Key,
              child: Column(
                children: [
                  Spacer(),
                  PaddingSpacecustom.horz(
                    10,
                    TextFormField(
                      controller: logic.namecontrol,
                      maxLines: 1,
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
                          "Name",
                          style: textstyle.text_form(18, splashBlack),
                        ),
                        suffix: GestureDetector(
                          onTap: () {
                            logic.namecontrol.text = '';
                          },
                          child: const Icon(IconlyLight.close_square),
                        ),
                      ),
                      style: textstyle.text_form(20, splashBlack),
                      onChanged: (value) {
                        logic.namecontrol.text = value.toString().trim();
                      },
                      textInputAction: TextInputAction.next,
                      onTapOutside: (e) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      validator: (value) {
                        var input = RegExp(r'[a-z][A-z]$');
                        bool checking = input.hasMatch(value.toString());

                        if (!checking) {
                          return 'Name must contain alaphatic ';
                        }
                        return null;
                      },
                    ),
                  ),
                  const Spacer(),
                  PaddingSpacecustom.horz(
                    10,
                    TextFormField(
                      controller: logic.EmailControl,
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
                              logic.EmailControl.text = '';
                            },
                            child: const Icon(IconlyLight.close_square)),
                      ),
                      style: textstyle.text_form(20, splashBlack),
                      onChanged: (value) {
                        logic.EmailControl.text = value.toString().trim();
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
                  ),
                  const Spacer(),
                  PaddingSpacecustom.horz(
                    10,
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
                          onTap: () {
                            logic.password = !logic.password;
                            logic.update();
                          },
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
                        if (value.toString().length <= 5) {
                          return 'to Shoort';
                        }
                        return null;
                      },
                    ),
                  ),
                  const Spacer(),
                  ButtonCustomizeWidget(
                    text: "Sign",
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
                        logic.clearthevalue();
                      }
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButtonWidget.textButton(
                      "Already have account ?",
                      () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LogScreen();
                            },
                          ),
                        );
                        logic.clearthevalue();
                      },
                    ),
                  ),
                  Spacer()
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
