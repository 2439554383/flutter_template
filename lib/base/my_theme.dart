import 'package:flutter/material.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/base/my_text.dart';
import 'package:flutter_template/generated/l10n.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.purple,
  // fontFamily: 'Georgia',
  bottomNavigationBarTheme: BottomAppBarTheme,
  textButtonTheme: textButtonTheme,
  scaffoldBackgroundColor: blackColor,
);
final ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.purple,
  // fontFamily: 'Georgia',
  textButtonTheme: textButtonTheme,
  bottomNavigationBarTheme: BottomAppBarTheme,
  scaffoldBackgroundColor: blackColor,
);

final BottomAppBarTheme = BottomNavigationBarThemeData(
  selectedItemColor: mainColor,
  backgroundColor: whiteColor,
  unselectedItemColor: greyTextColor,
  showUnselectedLabels: true,
  unselectedLabelStyle: MyText.w4_12.copyWith(color: greyTextColor),
);
final textButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: whiteColor,
    textStyle: MyText.w4_12.copyWith(color: mainColor),
  ),
);  
                  