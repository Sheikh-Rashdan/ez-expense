import 'package:flutter/material.dart';

class KColors {
  static const Color seedColor = Color(0xFF00FF00);
  static const Color scaffoldLight = Color(0xFFDFEEE1);
  static const Color scaffoldDark = Color(0xFF313A32);

  // text
  static const Color whiteText = Color(0xFFFFFFFF);
  static const Color blackText = Color(0xFF000000); // TODO: replace
  static const Color grayLightText = Color(0xFF7A7A7A);
  static const Color grayDarkText = Color(0xFFCDCDCD);

  // primary
  static const Color greenPrimary1 = Color(0xFF90D977);
  static const Color greenPrimary2 = Color(0xFF65A555);
  static const Color greenPrimary3 = Color(0xFF35712D);
  static const List<Color> greenGradientList = [greenPrimary1, greenPrimary3];

  static const Color orangePrimary1 = Color(0xFFF0A85D);
  static const Color orangePrimary2 = Color(0xFFC97A33);
  static const Color orangePrimary3 = Color(0xFF8A4F18);
  static const List<Color> orangeGradientList = [
    orangePrimary1,
    orangePrimary3,
  ];

  static const Color redPrimary1 = Color(0xFFE86E6E);
  static const Color redPrimary2 = Color(0xFFB84B4B);
  static const Color redPrimary3 = Color(0xFF7E2A2A);
  static const List<Color> redGradientList = [redPrimary1, redPrimary3];

  // secondary
  static const Color purpleSecondary1 = Color(0xFFBA98E3);
  static const Color purpleSecondary2 = Color(0xFF9872C7);
  static const Color purpleSecondary3 = Color(0xFF7A53A9);

  static const Color yellowSecondary1 = Color(0xFFDBBD6B);
  static const Color yellowSecondary2 = Color(0xFFC4A245);
  static const Color yellowSecondary3 = Color(0xFF9B7F34);

  // others
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF474747);
  static const Color dividerLight = Color(0x804F4F4F);
  static const Color dividerDark = Color(0x80757575);
  static const Color shadowColor = Color(0x40000000);
  static const Color highlightColor = Color(0x40FFFFFF);
}
