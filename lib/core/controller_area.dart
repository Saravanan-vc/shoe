import 'package:get/get.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/controller/forgot_controller.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/controller/Login_controller.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/controller/Sign_Contoller.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Homescreen_CHAPTER/controller/home_controller.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/Productscreen_CHAPTER/controller/productscreen.dart';

class ControllerArea {
  injection() {
    //authentication controller
    Get.put(LoginController());
    Get.put(SignContoller());
    Get.put(ForgotController());

    //home controller
    Get.put(HomeController());

    //product scereen controller
    Get.put(Productscreencontroller());
  }
}
