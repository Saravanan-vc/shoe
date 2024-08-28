import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shoe/core/C&T_CHAPTER/colors_s.dart';
import 'package:shoe/core/uni_widget_CHAPTER/position_class.dart';
import 'package:shoe/core/uni_widget_CHAPTER/screen_H_W.dart';

class FavrouitScreen extends StatelessWidget {
  const FavrouitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: splashWhite,
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 170,
              width: ScreenHW().width(context),
              child: Stack(
                children: [
                  const SizedBox(
                    height: 170,
                  ),
                  //positione for background image
                  PositionClass(left: -40.0).global(
                    Transform.rotate(
                      angle: 1.5,
                      child: SizedBox(
                        height: 180,
                        child: Image.asset(
                          'assets/logo/name.png',
                          color: splashBlack,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  PositionClass(right: -80.0, top: 30.0).global(
                    SizedBox(
                      height: 100,
                      width: ScreenHW().hight(context) - 18,
                      child: Transform.rotate(
                        angle: 24.5,
                        child: Image.asset('assets/blue1.png'),
                      ),
                    ),
                  ),
                  //product text
                  PositionClass(left: 170.0, top: 60.0).global(
                    const Text(
                      'Air force max',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  PositionClass(left: 170.0, top: 80.0).global(
                    const Text(
                      r'$ 599',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  PositionClass(right: 38.0, top: 18.0).global(const Icon(
                    IconlyLight.heart,
                    size: 30,
                  )),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
