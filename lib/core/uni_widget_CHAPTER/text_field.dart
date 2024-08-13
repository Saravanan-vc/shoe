import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';

class TextFieldcustom extends GetxController {
  late String emailst;
  late String passwordst;
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool focuscheck = true;
  TextFormField emailbar(
    IconData suffix,
    String label,
    dynamic color,
    dynamic ocolor,
    TextEditingController controller,
    bool password,
    final String? Function(String?)? validator,
    bool isornot,
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
              isornot ? controller.text = "" : password = false;
            },
            child: Icon(suffix)),
      ),
      maxLines: 1,
      obscureText: password,
      style: textstyle.text_form(20, splashBlack),
      onChanged: (value) {
        controller.text = value.toString().trim();
        if (password) {
          emailst = controller.text;
        } else {
          passwordst = controller.text;
        }
      },
      textInputAction: TextInputAction.next,
      onTapOutside: (e) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      validator: validator,
    );
  }

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> creatingID(String email, String password, context) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('sucess'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error'),
        ),
      );
      print(e);
    }
  }
}
