import 'package:flutter/material.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/base/my_text.dart';
final ThemeData lightTheme = ThemeData(
  primaryColor: Colors.purple,
  fontFamily: 'Georgia',
  bottomNavigationBarTheme: BottomAppBarTheme,
  scaffoldBackgroundColor: blackColor,
);
final ThemeData darkTheme = ThemeData(
  primaryColor: Colors.purple,
  fontFamily: 'Georgia',
  bottomNavigationBarTheme: BottomAppBarTheme,
  scaffoldBackgroundColor: blackColor,
);

final BottomAppBarTheme = BottomNavigationBarThemeData(
    selectedItemColor: mainColor,
    backgroundColor: whiteColor,
    unselectedItemColor: greyTextColor,
    showUnselectedLabels: true,
    unselectedLabelStyle: MyText.w4_12.copyWith(color: greyTextColor)
  );