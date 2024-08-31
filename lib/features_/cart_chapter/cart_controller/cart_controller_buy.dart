import 'package:shoe/features_/Homescreen_CHAPTER/controller/home_controller.dart';

class CartControllerBuy extends HomeController {
  List cartproduct = [];
  void addtocart(dynamic productdetails) {
    var product = productdetails;
    cartproduct.add(product);
    update();
  }
}
