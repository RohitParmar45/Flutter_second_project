import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      // primarySwatch: Colors.deepPurple,
      brightness: Brightness.light,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      primaryColor: Colors.black,
      buttonTheme: ButtonThemeData(buttonColor: lighBluishCOlor),
      colorScheme: ColorScheme.light(
          onPrimary: darkBluishColor, onSecondary: darkBluishColor),
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      primaryColor: Colors.white,
      canvasColor: darkCreamColor,
      colorScheme: ColorScheme.dark(
          onPrimary: Colors.white, onSecondary: lighBluishCOlor),
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));

  //colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color lighBluishCOlor = Vx.indigo300;

  static Color darkBluishColor = Color(0xff403b58);
}
