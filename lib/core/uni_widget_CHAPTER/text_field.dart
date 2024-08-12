import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class TextFieldcustom extends GetxController {
  bool focuscheck = true;
  TextFormField emailbar(
    String label,
    dynamic color,
    dynamic ocolor,
    TextEditingController controller,
    bool password,
    final String? Function(String?)? validator,
  ) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: focuscheck ? ocolor : splashRed,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: focuscheck ? ocolor : splashRed,
            width: 2.0,
          ),
        ),
        label: Text(
          label,
          style: textstyle.text_form(18, splashBlack),
        ),
        suffix: GestureDetector(
            onTap: () {
              controller.text = "";
            },
            child: const Icon(CupertinoIcons.clear)),
      ),
      maxLines: 1,
      obscureText: password,
      style: textstyle.text_form(20, splashBlack),
      onChanged: (value) {
        controller.text = value.toString().trim();
      },
      textInputAction: TextInputAction.next,
      onTapOutside: (e) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      validator: validator,
    );
  }
}
