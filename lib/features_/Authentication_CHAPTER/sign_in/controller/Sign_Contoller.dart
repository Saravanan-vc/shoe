import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/features_/Authentication_CHAPTER/Authentication_blueprint/blue_auth.dart';

class SignContoller extends GetxController implements loging_sign {
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
}
