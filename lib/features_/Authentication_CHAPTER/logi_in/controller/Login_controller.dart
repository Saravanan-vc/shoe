import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/core/uni_widget_CHAPTER/snackbar.dart';
import 'package:shoe/features_/Authentication_CHAPTER/Authentication_blueprint/blue_auth.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/pages/home_screen.dart';

class LoginController extends GetxController implements loging_sign {
  @override
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  TextEditingController emailControl = TextEditingController();
  @override
  TextEditingController passwordControl = TextEditingController();
  @override
  TextEditingController namecontrol = TextEditingController();

  @override
  void clearthevalue() {
    emailControl.clear();
    passwordControl.clear();
    namecontrol.clear();
  }

  @override
  bool password = true;

  @override
  void loop() {
    password = !password;
    update();
  }

  @override
  void Fireauth(String? email, String? password, context) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email!, password: password!);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBarwidget.correctnotificatioin(context, "That you'r created ID"),
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
      clearthevalue();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBarwidget.errortnotificatioin(
            context, "Check the inputs that are correct"),
      );
    }
  }
}
