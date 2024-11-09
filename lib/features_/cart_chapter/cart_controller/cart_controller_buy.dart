import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/controller/home_controller.dart';

List cartproduct = [];

class CartControllerBuy extends HomeController {
  // add to datbase
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
 
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

  bool trackerpage = false;
  void trackerpageon() {
    trackerpage = true;
  }

  bool checkbox = true;

  void updatecheckbox() {
    checkbox = !checkbox;
    update();
  }

  Future<void> addtodatabase(String pname, int pprice, String rname,
      String rphone, String image) async {
    var userCredential = _firebaseAuth.currentUser?.uid;
   

    DateTime dateTime = DateTime.now().add(const Duration(days: 2));
    Timestamp formtime = Timestamp.fromDate(dateTime);

    await _firebaseFirestore
        .collection("user")
        .doc("$userCredential")
        .collection("buyed")
        .doc()
        .set({
      "pname": pname,
      "pprice": pprice,
      "rname": rname,
      "rphone": rphone,
      "pdate": FieldValue.serverTimestamp(),
      "ddate": formtime,
      "image": image
    });
  }

  // get data
  Stream getdatalive() {
    return _firebaseFirestore
        .collection("user")
        .doc("${_firebaseAuth.currentUser?.uid}")
        .collection("buyed")
        .snapshots();
  }
}
