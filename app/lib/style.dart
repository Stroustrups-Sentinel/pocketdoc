import 'package:flutter/material.dart';

//The Apps theme
/*
 - Fonts: Comfortaa & Noto_Serif
 - Icons: Material Icons(default)
 - Colors ( Name: HEX Value : RGB)
 ------------------------
 - Pansy Purple ........: 870058  : (135, 0, 88)
 - Fire Opal ...........: EE6352  : (238,99,82)
 - Tan .................: DBBEA1  : (219,190,161)
 - Black ...............: 000000  : (0,0,0)
 - Maximum Blue Purple  : ACACDE  : (172,172,222)
 */

// Color Variables
const pansyPurpleColor = Color.fromRGBO(135, 0, 88, 1.0);
const fireOpalColor = Color.fromRGBO(238, 99, 82, 1.0);
const tanColor = Color.fromRGBO(219, 190, 161, 1.0);
const blackColor = Color.fromRGBO(0, 0, 0, 1.0);
const maximumBluePurpleColor = Color.fromRGBO(172, 172, 222, 1.0);

// Text Variables
const largeTextSize = 26.0;
const mediumTextSize = 20.0;
const bodyTextSize = 16.0;

const String headingFontDefault = 'Comfortaa';
const String bodyFontDefault = 'Noto Serif';

ThemeData themeStyling() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      color: pansyPurpleColor,
    ),
    bottomAppBarColor: pansyPurpleColor,
    bottomNavigationBarTheme: _myBottomNavBarTheme(pansyPurpleColor),
    fontFamily: headingFontDefault,
    textTheme: textThemeStyling(),
    scaffoldBackgroundColor: tanColor,
  );
}

// functions

BottomNavigationBarThemeData _myBottomNavBarTheme(Color bgColor) {
  return BottomNavigationBarThemeData(
    backgroundColor: bgColor,
  );
}

TextTheme textThemeStyling() {
  return TextTheme(
    titleMedium: titleTextStyle(mediumTextSize),
    titleLarge: titleTextStyle(largeTextSize), // todo change this later on
    bodyMedium: bodyTextStyle(mediumTextSize),
    bodyLarge: bodyTextStyle(largeTextSize),
  );
}

TextStyle titleTextStyle(double textSize) {
  return TextStyle(
    // fontFamily: ,
    fontWeight: FontWeight.w300,
    fontSize: textSize,
  );
}

TextStyle bodyTextStyle(double textSize) {
  return TextStyle(
    fontFamily: bodyFontDefault,
    fontWeight: FontWeight.normal,
    fontSize: textSize,
  );
}
