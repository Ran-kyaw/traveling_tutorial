import 'dart:ui';

import 'package:flutter/material.dart';

import 'dimensions.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 88, 139, 206);
  static const secondaryColor = Color.fromARGB(199, 150, 223, 205);

  //late add anoterh color
  static const Color darkerText = Color.fromARGB(255, 7, 7, 7);

  //Font Theme
  static TextStyle headtext = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimensions.font26,
    letterSpacing: 0.27,
    color: mainColor,
  );

  static TextStyle title = TextStyle(
    fontSize: Dimensions.font16,
    letterSpacing: 0.18,
    height: 0.9,
    color: Colors.white,
  );

  // static const TextStyle subtitle = TextStyle(
  //   fontWeight: FontWeight.bold,
  //   fontSize: 14,
  //   letterSpacing: -0.04,
  //   color: darkerText,
  // );
}
