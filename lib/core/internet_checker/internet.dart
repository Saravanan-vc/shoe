import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class Internet extends GetxController {
  late StreamSubscription streamSubscription;
  bool internet = false;

  @override
  void onInit() {
    super.onInit();
    streamSubscription =
        Connectivity().onConnectivityChanged.listen((result) async {
      internet = await InternetConnectionChecker().hasConnection;
      if (internet == false) {
        Get.snackbar('Connection Error', 'Connect with internet',
            duration: const Duration(days: 1),
            isDismissible: false,
            icon: const Icon(CupertinoIcons.wifi_exclamationmark));
      } else {
        if (Get.isSnackbarOpen) {
          Get.closeCurrentSnackbar();
        }
      }
    });
  }
}
