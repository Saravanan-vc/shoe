import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/core/uni_widget_CHAPTER/snackbar.dart';
import 'package:shoe/features_/Authentication_CHAPTER/Authentication_blueprint/blue_auth.dart';
import 'package:http/http.dart' as http;

class SignContoller extends GetxController implements loging_sign {
  @override
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
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
  void Fireauth(
    String? email,
    String? password,
    context
  ) {}

  void Autheintication(
      String email, String password, context, String name) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBarwidget.correctnotificatioin(context, "That you'r created ID"),
      );
      apicall(name, email);
      clearthevalue();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBarwidget.errortnotificatioin(
            context, "Check the inputs that are correct"),
      );
    }
  }

//post api integration
  final api = 'https://postdata-alpha.vercel.app/';

  Future apicall(String name, String email) async {
    final Map tojson = {
      "name": name,
      "email": email,
    };
    return http.post(
      Uri.parse(api),
      body: jsonEncode(tojson),
      headers: {"Content-Type": "application/json"},
    );
  }
}
