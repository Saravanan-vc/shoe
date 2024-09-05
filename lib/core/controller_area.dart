import 'package:get/get.dart';
import 'package:shoe/core/internet_checker/internet.dart';
import 'package:shoe/features_/Authentication_CHAPTER/forgot_in/controller/forgot_controller.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/controller/Login_controller.dart';
import 'package:shoe/features_/Authentication_CHAPTER/sign_in/controller/Sign_Contoller.dart';
import 'package:shoe/features_/BottomNavigator_CHAPTER/controller/bottom_navigator_controller.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/controller_favrou/favrouit_controller.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/controller/home_controller.dart';
import 'package:shoe/features_/Productscreen_CHAPTER/controller/productscreen.dart';
import 'package:shoe/features_/cart_chapter/cart_controller/cart_controller_buy.dart';
import 'package:shoe/features_/common_controller/favrouit_controller.dart';

class ControllerArea {
  injection() {
     //internertsd checker
    Get.put(Internet(), permanent: true);
    
    //authentication controller
    Get.put(LoginController());
    Get.put(SignContoller());
    Get.put(ForgotController());

    //home controller
    Get.put(HomeController());

    //product scereen controller
    Get.put(Productscreencontroller());

    //bottom navigator controller
    Get.put(Bottomnavigatorcontroller());

    //favrouit screen
    Get.put(FavrouitController());

    //likecontroller
    Get.put(favrouitController());

    //cart controller to buy
    Get.put(CartControllerBuy());

   
  }
}
