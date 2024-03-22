import 'package:flutter/material.dart';

class ColorChanger extends ChangeNotifier {
  Color backgroundColor1 = Colors.red;
  Color backgroundColor2 = Colors.blue;
  changeColor() {
    if (backgroundColor1 == Colors.red && backgroundColor2 == Colors.blue) {
      backgroundColor1 = Colors.blue;
      backgroundColor2 = Colors.red;
    } else if (backgroundColor1 == Colors.blue &&
        backgroundColor2 == Colors.red) {
      backgroundColor1 = Colors.red;
      backgroundColor2 = Colors.blue;
    }
    notifyListeners();
  }
}
