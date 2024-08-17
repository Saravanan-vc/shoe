import 'package:get/get.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/controller/forgot_controller.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/controller/Login_controller.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/controller/Sign_Contoller.dart';

class ControllerArea {
  injection() {
    //authentication controller
    Get.put(LoginController());
    Get.put(SignContoller());
    Get.put(ForgotController());
  }
}
