import 'dart:convert';

import 'package:get/get.dart';
import 'package:shoe/core/uni_widget_CHAPTER/api/apilink.dart';
import 'package:shoe/core/uni_widget_CHAPTER/snackbar.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/model/products_models.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  bool favrouit(bool like) {
    bool unlike = !like;
    return unlike;
  }

  List<ProductsModels> products = [];
  @override
  void onInit() async {
    super.onInit();
    await fetchproducts();
  }

  Future<void> fetchproducts() async {
    try {
      var response = await http.get(Uri.parse(productsapi));
      if (response.statusCode == 200) {
        var fetchedresponse = json.decode(response.body) as List;
        List<ProductsModels> finaldata = fetchedresponse
            .map((data) => ProductsModels.fromjson(data))
            .toList();
        products.clear();
        products.assignAll(finaldata);
      }
    } catch (e) {
      SnackBarwidget.errortnotificatioin(Get.context, e.toString());
    }
  }
  // fixed card below this

  List<List> allimages = [
    [
      'assets/ys.png',
      'assets/airmax.png',
    ],
    ['assets/green.png', 'assets/blue1.png']
  ];
  List<List> allname = [
    [
      'Die Mood',
      'SB Dunk',
    ],
    ['Air Force C', 'Air Force 2']
  ];
  //fuctions for chanign image
  int imagescree = 0;
  int imagescree2 = 0;
  bool name = false;
  bool nam2 = false;
  check(int i) {
    if (i == 1) {
      return imagescree;
    } else {
      return imagescree2;
    }
  }

  check2(int i) {
    switch (i) {
      case 0:
        return nam2;

      case 1:
        return name;
    }
  }

  boolchange(int i) {
    switch (i) {
      case 0:
        nam2 = !nam2;
        return nam2;

      case 1:
        name = !name;
        return name;
    }
  }

  doubletap(int i) {
    if (i == 1) {
      if (imagescree == allimages[0].length - 1) {
        imagescree = 0;
      } else {
        imagescree = imagescree + 1;
      }
    } else {
      if (imagescree2 == allimages[0].length - 1) {
        imagescree2 = 0;
      } else {
        imagescree2 = imagescree2 + 1;
      }
    }
  }
}
