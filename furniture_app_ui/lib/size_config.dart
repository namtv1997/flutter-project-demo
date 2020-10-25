import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWith;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientaion;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWith = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientaion = _mediaQueryData.orientation;

    defaultSize = orientaion == Orientation.landscape
        ? screenHeight * 0.024
        : screenWith * 0.024;
  }
}
