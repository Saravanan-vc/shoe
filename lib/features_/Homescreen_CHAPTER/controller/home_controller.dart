import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:shoe/core/uni_widget_CHAPTER/api/apilink.dart';
import 'package:shoe/core/uni_widget_CHAPTER/snackbar.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/model/products_models.dart';
import 'package:http/http.dart' as http;
import 'package:shoe/features_/common_controller/favrouit_controller.dart';

class HomeController extends favrouitController{
 

  List<ProductsModels> products = [];

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
}
