import 'package:shoe/features_/common_controller/favrouit_controller.dart';

List<dynamic> nameproductfa = [];

class FavrouitController extends favrouitController {
  void clearproduct(int index) {
    nameproductfa.removeAt(index);
  }

  void ulike(int i) {
    nameproductfa[i].like = !nameproductfa[i].like;
  }
}
