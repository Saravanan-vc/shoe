import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shoe/features_/Favroutproduct_CHAPTER/favrouit_screen.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/view/pages/home_screen.dart';
import 'package:shoe/features_/football_CHAPTER/footballshoe_screen.dart';

class Bottomnavigatorcontroller extends GetxController {
  //scree controller to show which scree
  List body = [const HomeScreen(),const FootballshoeScreen(), const FavrouitScreen()];
  int indexfs = 0;
  void indexchange(int i) {
    indexfs = i;
    update();
  }

  // bottom navigator controlling statement
  List<bool> indexhome = [true, false, false];

  void updateindexhome(int i) {
    for (int j = 0; j < indexhome.length; j++) {
      indexhome[j] = j == i;
    }
    update();
  }
}
