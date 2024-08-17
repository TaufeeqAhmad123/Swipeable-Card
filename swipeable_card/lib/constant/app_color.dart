import 'package:flutter/material.dart';

class AppColors {
  static Color kPrimary = const Color(0xff281734);
  static Color kBg = const Color(0xfffff5e0);
  static Color kBlack = const Color(0xFF444444);
  static Color kBlack2 = const Color(0xFF131313);
  static Color kBlack3 = const Color(0xFF1D1E1E);
  static Color kWhite = const Color(0xFFFFFFFF);
  static Color kGrey = const Color(0xFFBDBDBD);
  static Color kLightGrey = const Color(0xFF767680);
  static Color kButtonText = const Color(0xFFFFFFAD);
  static Color kPink = Colors.pink[400]!;
  static Color kYellow = const Color(0xFFFFD600);
}

class AppGradients {
  static LinearGradient yellowishGradient = const LinearGradient(
      colors: [Color(0xFFFFF174), Color(0xFFFFD600)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  static RadialGradient primaryGradient = const RadialGradient(
    colors: [Color.fromARGB(255, 170, 224, 184), Color(0xff84bd93)],
  );
}
