import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/features_/order_histroy/widgets/easy_stepper.dart';
import 'package:shoe/features_/order_histroy/widgets/header_area.dart';

class OrderHistroyTrack extends StatelessWidget {
  const OrderHistroyTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: splashWhite,
        body: SafeArea(
          child: Column(
            children: [
              HeaderArea(),
              SizedBox(
                height: 80.h,
              ),
              Align(alignment: Alignment.center, child: EasyStepperf())
            ],
          ),
        ));
  }
}
