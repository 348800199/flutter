import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static final Color primary = Color(0xFF338FFB);
  static final Color orange = Color(0xFFFF5A35);

  static final Color text1 = Color(0xFF333333);
  static final Color text2 = Color(0xFF666666);
  static final Color text3 = Color(0xFF999999);
  static final Color placeholder = Color(0xFFC3C3C3);

  static final Color textBlue = Color(0xFF202A6A);

  static final Color error = Color(0xFFFE4B4B);

  static final Color bgColor1 = Color(0xFF4973DF);
  static final Color bgColor2 = Color(0xFF62B0FF);

  static final Color borderColor = Color(0xFFDDDDDD);
}

class Panle {
  static Theme titleTheme({Widget child}) {
    return Theme(
      data: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: AppColors.textBlue),
          bodyText2: TextStyle(color: AppColors.textBlue),
        ),
      ),
      child: child,
    );
  }
}
