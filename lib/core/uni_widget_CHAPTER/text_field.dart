import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class TextFieldcustom {
  bool iconcheck = false;
  bool focuscheck = true;
  TextFormField emailbar(
    String label,
    dynamic color,
    dynamic ocolor,
    TextEditingController controller,
    bool password,
  ) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
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
          style: textstyle.splas_Loging(18, splashBlack),
        ),
        suffix: iconcheck
            ? const Icon(CupertinoIcons.checkmark_alt)
            : const Icon(CupertinoIcons.clear),
      ),
      maxLines: 1,
      obscureText: password,
      style: textstyle.splas_Loging(20, splashBlack),
      onChanged: (value) {
        controller.text = value.toString().trim();
        if (value.trim().length > 5) {
          iconcheck = true;
        }
      },
      textInputAction: TextInputAction.next,
      onTapOutside: (e) {
        FocusManager.instance.primaryFocus?.unfocus();
        
      },
    );
  }
}
