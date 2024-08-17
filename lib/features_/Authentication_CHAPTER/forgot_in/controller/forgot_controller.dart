import 'package:flutter/src/widgets/editable_text.dart';
import 'package:get/get.dart';
import 'package:shoe/features_/Authentication_CHAPTER/Authentication_blueprint/blue_auth.dart';

class ForgotController extends GetxController implements loging_sign {
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
  void loop() {
    // noting to do hear
  }
}
