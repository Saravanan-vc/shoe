import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
// import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/cart_chapter/cart_controller/cart_controller_buy.dart';
// import 'package:shoe/features_/order_histroy/widgets/easy_stepper.dart';
// import 'package:shoe/features_/order_histroy/widgets/header_area.dart';

class OrderHistroyTrack extends StatelessWidget {
  const OrderHistroyTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashWhite,
      body: SafeArea(
        child: GetBuilder<CartControllerBuy>(builder: (context) {
          return StreamBuilder(
            stream: context.getdatalive(),
            builder: (context, snapshot) {
              var alldata = snapshot.data.docs;
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: alldata.length,
                    itemBuilder: (context, index) {
                      DateTime dateTime =
                          (alldata[index].data()["ddate"] as Timestamp)
                              .toDate();
                      var dateTime1 =
                          "${dateTime.day}/${dateTime.month}/${dateTime.year}";
                      DateTime dateTimeP =
                          (alldata[index].data()["pdate"] as Timestamp)
                              .toDate();
                      var dateTimeP1 =
                          "${dateTimeP.day}/${dateTimeP.month}/${dateTimeP.year}";
                      return Center(
                          child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            Text(
                                "Product Name: ${alldata[index].data()["pname"]}"),
                            Text(
                                "Product Price: ${alldata[index].data()["pprice"]}"),
                            Text("Date of Delivery: $dateTime1"),
                            Text("Date of Purchase: $dateTimeP1")
                          ],
                        ),
                      ));
                    });
              } else {
                return const Text("No oder till right now");
              }
            },
          );
        }),
      ),
    );
  }
}
/*
GetBuilder<CartControllerBuy>(builder: (logic) {
          return Column(
            children: [
              const HeaderArea(),
              const Spacer(),
              logic.trackerpage
                  ?const Expanded(flex: 20, child: EasyStepperf())
                  : Center(
                      child: Text(
                        "No Order Placed",
                        style: textstyle.normalhard(30, splashBlack2, 0),
                      ),
                    ),
              const Spacer(),
            ],
          );
        }),
*/