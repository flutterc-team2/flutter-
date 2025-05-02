import 'package:flutter/material.dart';

class ResponsiveUi {
  static late double width;
  static late double height;

  static void initial({required BuildContext context}) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
