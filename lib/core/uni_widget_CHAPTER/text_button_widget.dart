
import 'package:flutter/material.dart';

class TextButtonWidget {
  static TextButton textButton(String text, VoidCallback onpress) {
    return TextButton(onPressed: onpress, child: Text(text));
  }
}
