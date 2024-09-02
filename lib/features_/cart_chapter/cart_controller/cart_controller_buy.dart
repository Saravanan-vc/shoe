import 'package:flutter/cupertino.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/controller/home_controller.dart';

List cartproduct = [];

class CartControllerBuy extends HomeController {
  //getting payment
  int pricemethod() {
    int a = 0;
    for (int i = 0; i < cartproduct.length; i++) {
      a = a + cartproduct[i].price as int;
    }
    return a;
  }

  //creating texteditcontroller
  TextEditingController Recivername = TextEditingController();
  TextEditingController Reciverphone = TextEditingController();
  TextEditingController Reciveremail = TextEditingController();
  final key = GlobalKey<FormState>();
}
