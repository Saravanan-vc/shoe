import 'package:get/get.dart';

class Productscreencontroller extends GetxController {
  List<bool> touched = [false, false, false, false];
  bool first = false;
  bool second = false;
  bool third = true;
  bool fourth = false;

  void sizetouched(int i) {
    first = false;
    second = false;
    third = false;
    fourth = false;
    switch (i) {
      case 1:
        first = true;
        break;
      case 2:
        second = true;
        break;
      case 3:
        third = true;
        break;
      case 4:
        fourth = true;
        break;
    }
    update();
  }

  // void Sizetouched(int i){
  //   for(int j = o)
  // }
}
