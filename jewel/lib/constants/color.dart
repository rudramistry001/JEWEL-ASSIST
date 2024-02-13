import 'package:flutter/material.dart';

class ConstantColor {
  static MaterialColor primaryColor =
      MaterialColor(0xFF2E3152, primaryColorMap);
  static MaterialColor secondaryColor =
      MaterialColor(0xFFF8B179, secondaryColorMap);
  static MaterialColor customBlack = MaterialColor(0xff000000, blackColorMap);

  // static const Color black = Color(0xFF000000);
  static const Color fontBlack = Color(0xFF1E1E1E);
  static const Color fontGrey = Color(0xff999999);
  static const Color fontBlue = Color(0xFF676F9D);
  static const Color white = Color(0xFFFFFFFF);
  static const Color borderColor = Color(0xFFE9F3FD);
  static const Color backgroundColor = Color(0xFFFAFDFF);
  static const Color titleColor = Color(0xffb1b6d0);
  static const Color textColor = Color(0xff646c99);
  static const Color selectedColor = Color(0xff3f9032);

  static const Color customGrey = Color(0xFFC8C8C8);

  static const Color success = Color(0xFF7AB404);
  static const Color successLight = Color(0xFFD6EFA2);
  static const Color error = Color(0xFFDA0404);
  static const Color blue = Color(0xff91c0ef);
  static const Color darkBlue = Color(0xff2D73B4);
  static const Color errorLight = Color(0xFFFFD9D9);
  static const Color lightGreen = Color(0xFFF1FCF4);

  static const Color red = Colors.redAccent;
}

Map<int, Color> primaryColorMap = {
  50: const Color(0xFFffffff),
  100: const Color(0xFFeaeaee),
  200: const Color(0xFFd5d6dc),
  300: const Color(0xFFc0c1cb),
  400: const Color(0xFFabadba),
  500: const Color(0xFF9798a9),
  600: const Color(0xFF828397),
  700: const Color(0xFF6d6f86),
  800: const Color(0xFF585a75),
  900: const Color(0xFF434663),
};

Map<int, Color> secondaryColorMap = {
  50: const Color(0xFFF8F8F8),
  100: const Color(0xFFEEF4D7),
  200: const Color(0xfff0ffc6),
  300: const Color(0xffe9ffa3),
  400: const Color(0xFFACC737),
  500: const Color(0xff91AD17),
  600: const Color(0xFFACC737),
  700: const Color(0xFFACC737),
  800: const Color(0xFFACC737),
  900: const Color(0xFFACC737),
};

Map<int, Color> blackColorMap = {
  50: const Color(0xFFEFEFEF),
  100: const Color(0xffEBEBEB),
  200: const Color(0xffA7A7A7),
  300: const Color(0xff7A7A7A),
  400: const Color(0xff474747),
  500: const Color(0xff222222),
  600: const Color(0xff000000),
  // 600: const Color(0xffFF7BC7),
  // 700: const Color(0xffFF7BC7),
  // 800: const Color(0xffFF7BC7),
  // 900: const Color(0xffFF7BC7),
};
