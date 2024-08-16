import 'package:flutter/cupertino.dart';

abstract class loging_sign {
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
}
