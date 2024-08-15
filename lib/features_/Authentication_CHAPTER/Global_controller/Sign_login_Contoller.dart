import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignLoginContoller extends GetxController {
  TextEditingController EmailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  TextEditingController namecontrol = TextEditingController();

  void clearthevalue() {
    EmailControl.clear();
    passwordControl.clear();
    namecontrol.clear();
  }

  bool password = true;
}
