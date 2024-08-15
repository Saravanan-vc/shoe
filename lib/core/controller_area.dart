import 'package:get/get.dart';
import 'package:shoe/core/uni_widget_CHAPTER/text_field.dart';
import 'package:shoe/features_/Authentication_CHAPTER/Global_controller/Sign_login_Contoller.dart';

class ControllerArea {
  injection() {
    Get.put(TextFieldcustom());
    Get.put(SignLoginContoller());
  }
}
