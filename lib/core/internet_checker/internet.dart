import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Internet extends GetxController {
  late StreamSubscription streamSubscription;
  bool internet = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    streamSubscription =
        Connectivity().onConnectivityChanged.listen((result) async {
      internet = await InternetConnectionChecker().hasConnection;
      if (internet == false) {
        Get.snackbar('title', 'message');
      } else {
        if (Get.isSnackbarOpen) {
          Get.closeCurrentSnackbar();
        }
      }
    });
  }
}
