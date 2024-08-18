import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

abstract class loging_sign {
  //firebase auth
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //controllers
  TextEditingController namecontrol = TextEditingController();
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  // clear for controller function
  void clearthevalue();
  //obscuretext
  bool password = true;
  //visible generate
  void loop();
  void Fireauth(String? email, String? password ,context);
}
