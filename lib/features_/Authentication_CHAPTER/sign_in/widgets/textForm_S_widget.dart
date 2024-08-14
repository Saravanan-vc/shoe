import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/button_customize_widget.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/core/uni_widget_CHAPTER/text_button_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/pages/log_screen.dart';

class TextformSWidget extends StatelessWidget {
  const TextformSWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              const Spacer(),
              PaddingSpacecustom.horz(
                10,
                TextFormField(
                  // controller: ,
                  maxLines: 1,
                  // obscureText: ,
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
                        onTap: () {}, child: Icon(CupertinoIcons.clear)),
                  ),
                  style: textstyle.text_form(20, splashBlack),
                  onChanged: (value) {},
                  textInputAction: TextInputAction.next,
                  onTapOutside: (e) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  validator: (value) {},
                ),
              ),
              const Spacer(),
              PaddingSpacecustom.horz(
                10,
                TextFormField(
                  // controller: ,
                  maxLines: 1,
                  // obscureText: ,
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
                        onTap: () {}, child: Icon(CupertinoIcons.eye_slash)),
                  ),
                  style: textstyle.text_form(20, splashBlack),
                  onChanged: (value) {},
                  textInputAction: TextInputAction.next,
                  onTapOutside: (e) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  validator: (value) {},
                ),
              ),
              const Spacer(),
              PaddingSpacecustom.horz(
                10,
                TextFormField(
                  // controller: ,
                  maxLines: 1,
                  // obscureText: ,
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
                        onTap: () {}, child: Icon(CupertinoIcons.clear)),
                  ),
                  style: textstyle.text_form(20, splashBlack),
                  onChanged: (value) {},
                  textInputAction: TextInputAction.next,
                  onTapOutside: (e) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  validator: (value) {},
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
                onpress: () {},
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButtonWidget.textButton(
                  "i have account ?",
                  () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return const LogScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
