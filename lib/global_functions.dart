import 'package:flutter/material.dart';

class GlobalFunctions {
  static final GlobalFunctions _singleton = GlobalFunctions._internal();

  GlobalFunctions._internal();

  factory GlobalFunctions() {
    return _singleton;
  }

  bool isMobilePhone() {
    Size size = WidgetsBinding.instance!.window.physicalSize;
    double pixelRatio = WidgetsBinding.instance!.window.devicePixelRatio;
    double width = size.width; //Resolution olarak width verir
    if (width / pixelRatio < 1100) {
      return true;
    } else {
      return false;
    }
  }
}

final globalFunctions = GlobalFunctions();
