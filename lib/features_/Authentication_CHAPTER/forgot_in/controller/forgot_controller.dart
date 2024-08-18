import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:get/get.dart';
import 'package:shoe/core/uni_widget_CHAPTER/snackbar.dart';
import 'package:shoe/features_/Authentication_CHAPTER/Authentication_blueprint/blue_auth.dart';

class ForgotController extends GetxController implements loging_sign {
  @override
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  TextEditingController emailControl = TextEditingController();

  @override
  TextEditingController namecontrol = TextEditingController();

  @override
  bool password = false;

  @override
  TextEditingController passwordControl = TextEditingController();

  @override
  void clearthevalue() {
    emailControl.clear();
  }

  @override
  void loop() {}

  @override
  void Fireauth(String? email, String? password, context) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email!);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBarwidget.correctnotificatioin(
            context, "Password rest link sent to mail"),
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
