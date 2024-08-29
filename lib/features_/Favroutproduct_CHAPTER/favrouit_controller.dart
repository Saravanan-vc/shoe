import 'package:shoe/features_/Homescreen_CHAPTER/controller/home_controller.dart';

List<dynamic> nameproductfa = [];

class FavrouitController extends HomeController {
  void clearproduct(int index) {
    nameproductfa.removeAt(index);
  }
}
