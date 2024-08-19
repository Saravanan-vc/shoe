import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/Text_c.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/padding&Margin/padding_space.dart';
import 'package:shoe/core/uni_widget_CHAPTER/sizedbox_hight.dart';
import 'package:shoe/features_/Homescreen_CHAPTER/widgets/search_bar.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      backgroundColor: splashWhite,
      expandedHeight: 220,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(top: 1.h),
        expandedTitleScale: 1.0,
        centerTitle: true,
        background: PaddingSpacecustom.horz(
          10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spacehight.hightverys(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(IconlyLight.category),
                  CircleAvatar(
                    radius: 16.h,
                  )
                ],
              ),
              spacehight.hightverys(context),
              Text(
                "Hello!",
                style: textstyle.splascomr(40, splashBlack),
              ),
              Text(
                "saravanan",
                style: textstyle.splasHi(40, splashBlack, -0.1),
              )
            ],
          ),
        ),
        title:const SearchBarC(),
      ),
    );
  }
}
