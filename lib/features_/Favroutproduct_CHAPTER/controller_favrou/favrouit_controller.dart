import 'package:get/get.dart';

List<dynamic> nameproductfa = [];

class FavrouitController extends GetxController {
  void clearproduct(int index) {
    nameproductfa.removeAt(index);
  }

  void ulike(int i) {
    nameproductfa[i].like = !nameproductfa[i].like;
  }
}
