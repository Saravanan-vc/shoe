import 'package:flutter/material.dart';
import 'package:shoe/core/uni_widget_CHAPTER/text_button_widget.dart';
import 'package:shoe/features_/Authentication_CHAPTER/logi_in/view/pages/log_screen.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButtonWidget.textButton("have a account !", () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return const LogScreen();
              },
            ),
          );
        }),
      ),
    );
  }
}
