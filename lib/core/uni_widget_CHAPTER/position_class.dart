import 'package:flutter/material.dart';


class PositionClass {
  dynamic right;
  dynamic left;
  dynamic top;
  dynamic bottom;
  PositionClass({
    this.bottom,
    this.left,
    this.right,
    this.top,
  });
  Positioned global(Widget child) {
    return Positioned(
      right: right,
      left: left,
      top: top,
      bottom: bottom,
      child: child,
    );
  }
}
