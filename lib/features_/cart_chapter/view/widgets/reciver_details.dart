import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';
import 'package:shoe/core/uni_widget_CHAPTER/snackbar.dart';
import 'package:shoe/features_/cart_chapter/cart_controller/cart_controller_buy.dart';

class ReciverDetails extends StatefulWidget {
  final int price;
  const ReciverDetails({super.key, required this.price});

  @override
  State<ReciverDetails> createState() => _ReciverDetailsState();
}

class _ReciverDetailsState extends State<ReciverDetails> {
  late Razorpay razorpay;
  @override
  void initState() {
    razorpay = Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, razorsucess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, razorerror);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      width: ScreenHW().width(context) - 50,
      decoration: BoxDecoration(
        color: splashWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GetBuilder<CartControllerBuy>(builder: (logic) {
        return Material(
          color: splashWhite,
          borderRadius: BorderRadius.circular(8),
          child: Form(
            key: logic.key,
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Reciver Details",
                  style: textstyle.normalhard(30, splashBlack, 0),
                ),
                const Spacer(),
                PaddingSpacecustom.horz(
                  4,
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Give Reciver name for delivery safty';
                      }
                      return null;
                    },
                    controller: logic.Recivername,
                    onChanged: (text) {
                      logic.Recivername.text = text.toString().trim();
                    },
                    textInputAction: TextInputAction.next,
                    onTapOutside: (_) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            onTap: () {
                              logic.Recivername.text = "";
                            },
                            child: const Icon(IconlyBold.close_square)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: splashBlack),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: splashBlack,
                          ),
                        ),
                        label: const Text("Reciver name")),
                  ),
                ),
                const Spacer(),
                PaddingSpacecustom.horz(
                  4,
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Give Reciver Phone for delivery safty';
                      }
                      if (value.length < 9) {
                        return 'Give proper Reciver Phone for delivery safty';
                      }
                      return null;
                    },
                    onChanged: (text) {
                      logic.Reciverphone.text = text.toString().trim();
                    },
                    controller: logic.Reciverphone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    onTapOutside: (_) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            onTap: () {
                              logic.Reciverphone.text = "";
                            },
                            child: const Icon(IconlyBold.close_square)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: splashBlack)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: splashBlack)),
                        label: const Text("Recevier Number")),
                  ),
                ),
                const Spacer(),
                PaddingSpacecustom.horz(
                  4,
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'give Recevier address for delvery ';
                      }
                      return null;
                    },
                    onChanged: (text) {
                      logic.Reciveremail.text = text.toString();
                    },
                    controller: logic.Reciveremail,
                    textInputAction: TextInputAction.next,
                    maxLines: 4,
                    onTapOutside: (_) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            onTap: () {
                              logic.Reciveremail.clear();
                            },
                            child: const Icon(IconlyBold.close_square)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: splashBlack)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: splashBlack)),
                        label: const Text("Recevier Address")),
                  ),
                ),
                const Spacer(),
                PaddingSpacecustom.horz(
                    4,
                    Row(
                      children: [
                        Checkbox(
                          value: logic.checkbox,
                          onChanged: (_) => logic.updatecheckbox(),
                          overlayColor: WidgetStatePropertyAll(splashBlack),
                          activeColor: splashBlack,
                        ),
                        Text(
                          'COD',
                          style: textstyle.normal(20, splashBlack, 0),
                        ),
                        Text(
                          '  (Default Payment)',
                          style: textstyle.normal(14, splashBlack3, 0),
                        )
                      ],
                    )),
                const Spacer(),
                logic.checkbox
                    ? GestureDetector(
                        onTap: () {
                          if (logic.key.currentState!.validate()) {
                            debugPrint(
                                "----------------------------------------------------");
                            debugPrint("${cartproduct.first.name}");
                            logic.addtodatabase(
                                cartproduct.first.name,
                                widget.price,
                                logic.Recivername.text,
                                logic.Reciverphone.text,
                                cartproduct.first.image);
                            debugPrint(
                                "----------------------------------------------------");
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBarwidget.correctnotificatioin(context,
                                    "check order histroy to tarke you order"));
                            logic.trackerpageon();
                          }
                        },
                        child: Container(
                          height: 40.h,
                          width: ScreenHW().width(context) - 80,
                          decoration: BoxDecoration(
                              color: splashBlack,
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Text(
                              'Process',
                              style: textstyle.normal(20, splashWhite, 0),
                            ),
                          ),
                        ),
                      )
                    : // below this navigat razor pay
                    GestureDetector(
                        onTap: () {
                          if (logic.key.currentState!.validate()) {
                            var options = {
                              'key': 'rzp_live_ILgsfZCZoFIKMb',
                              'amount': widget.price.toDouble(),
                              'name': 'Acme Corp.',
                              'description': 'Fine T-Shirt',
                              'prefill': {
                                'contact': '8888888888',
                                'email': 'test@razorpay.com'
                              }
                            };
                            razorpay.open(options);
                            logic.trackerpageon();
                          }
                        },
                        child: Container(
                          height: 40.h,
                          width: ScreenHW().width(context) - 80,
                          decoration: BoxDecoration(
                              color: splashBlue,
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Text(
                              'Process',
                              style: textstyle.normal(20, splashWhite, 0),
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  height: 2.h,
                ),
                const Text('Terms and conditions'),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  void razorsucess(PaymentSuccessResponse response) {
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBarwidget.correctnotificatioin(
            context, "check order histroy to tarke you order"));
  }

  void razorerror(PaymentFailureResponse response) {
    var cartc = Get.find<CartControllerBuy>();
    debugPrint("----------------------------------------------------");
    debugPrint("${cartproduct.first.name}");
    cartc.addtodatabase(
        cartproduct.first.name,
        widget.price,
        cartc.Recivername.text,
        cartc.Reciverphone.text,
        cartproduct.first.image);
    debugPrint("----------------------------------------------------");
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBarwidget.errortnotificatioin(context, "Payment error"));
  }
}


/* 
    till now we complet the payment fucntions
    we want to create data about the use and what they purchased
    like(collec->docu->collec->docu)
*/