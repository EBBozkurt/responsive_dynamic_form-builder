import 'package:flutter/material.dart';

class GlobalFunctions {
  static final GlobalFunctions _singleton = GlobalFunctions._internal();

  GlobalFunctions._internal();

  factory GlobalFunctions() {
    return _singleton;
  }

  bool isMobilePhone() {
    Size size = WidgetsBinding.instance.window.physicalSize;
    double pixelRatio = WidgetsBinding.instance.window.devicePixelRatio;
    double width = size.width; //Width as a Resolution
    if (width / pixelRatio < 1100) {
      return true;
    } else {
      return false;
    }
  }

  int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

final globalFunctions = GlobalFunctions();
