import 'package:division/division.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const titleSize = 32.0;
  static const textSize = 12.0;

  static final titleStyle = TxtStyle()
    ..textColor(Colors.black)
    ..fontSize(titleSize)
    ..padding(all: 8.0)
    ..bold();
  static final textStyle = TxtStyle()
    ..textColor(Colors.black)
    ..fontSize(textSize)
    ..padding(all: 8.0);
}
