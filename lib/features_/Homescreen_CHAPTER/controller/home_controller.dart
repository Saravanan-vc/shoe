import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:shoe/core/uni_widget_CHAPTER/api/apilink.dart';
import 'package:shoe/core/uni_widget_CHAPTER/snackbar.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/model/cardfixed.dart/fixedmodel.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/model/cardfixed.dart/secondmodel.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/model/products_models.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  bool favrouit(bool like) {
    bool unlike = !like;
    return unlike;
  }

  List<ProductsModels> products = [];
  List hello = [];

  @override
  void onInit() async {
    super.onInit();
    await fetchproducts();
    await fetchcardapi();
    await fetchapisecond();
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
  List<Fixedmodel> caedFixed = [];

  Future<void> fetchcardapi() async {
    try {
      var retiveapi = await http.get(Uri.parse(cardfixedapi));
      if (retiveapi.statusCode == 200) {
        var jsondecoe = json.decode(retiveapi.body) as List;
        List<Fixedmodel> cardProduct =
            jsondecoe.map((data) => Fixedmodel.fromjson(data)).toList();
        caedFixed.clear();
        caedFixed.assignAll(cardProduct);
      }
    } catch (e) {
      SnackBarwidget.errortnotificatioin(Get.context, e.toString());
    }
  }

  List<Secondmodel> secondfixed = [];

  Future<void> fetchapisecond() async {
    try {
      var response = await http.get(Uri.parse(secondfixedapi));
      if (response.statusCode == 200) {
        var responselist = json.decode(response.body) as List;
        List<Secondmodel> rawdata =
            responselist.map((data) => Secondmodel.fromjson(data)).toList();
        secondfixed.clear();
        secondfixed.assignAll(rawdata);
      }
    } catch (e) {
      SnackBarwidget.errortnotificatioin(Get.context, e.toString());
    }
  }

  //fuctions for chanign image
  int imagescree = 9;
  int imagescree2 = 6;
  bool name = false;
  bool nam2 = false;
  // check(int i) {
  //   // it showes whcih list want to use in the index gride
  //   if (i == 1) {
  //     return imagescree;
  //   } else {
  //     return imagescree2;
  //   }
  // }

  check2(int i) {
    // this function is help to showe the name prodcut
    switch (i) {
      case 0:
        return nam2;

      case 1:
        return name;
    }
  }

  boolchange(int i) {
    //this function is help to showe the name of the currenct product
    switch (i) {
      case 0:
        nam2 = !nam2;

      case 1:
        name = !name;
    }
  }

  doubletap(int i) {
    // this function is help to change the image in doulble tap
    switch (i) {
      case 0:
        imagescree2 = imagescree2 == caedFixed.length - 1
            ? imagescree2 = 0
            : imagescree2 + 1;
      case 1:
        imagescree = imagescree == caedFixed.length - 1
            ? imagescree = 0
            : imagescree + 1;
    }
  }

  //
  checkname(int i) {
    switch (i) {
      case 0:
        return '${caedFixed[imagescree2].name}';
      case 1:
        {
          return '${secondfixed[imagescree].name}';
        }
    }
  }

  checkimage(int i) {
    switch (i) {
      case 0:
        return '${caedFixed[imagescree2].image}';
      case 1:
        {
          return '${secondfixed[imagescree].image}';
        }
    }
  }

  checklike(int i) {
    switch (i) {
      case 0:
        return caedFixed[imagescree2].like;
      case 1:
        {
          return secondfixed[imagescree].like;
        }
    }
  }

  checkprice(int i) {
    switch (i) {
      case 0:
        return '${caedFixed[imagescree2].price}';
      case 1:
        {
          return '${secondfixed[imagescree].price}';
        }
    }
  }
}
