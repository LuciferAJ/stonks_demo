import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stonks_demo/shared/stonks_colors.dart';

ThemeData stonksTheme() => ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: primaryColor,
  accentColor: accentColor,
  indicatorColor: accentColor,

  fontFamily: GoogleFonts.lato().fontFamily,
  textTheme: const TextTheme(
    headline1: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline3: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    headline5: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold
    ),
    headline6: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    headline4:const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),

    subtitle1: const TextStyle(
        fontSize: 10,
        color: Colors.black38,
        fontWeight: FontWeight.bold
    ),
    caption: const TextStyle(
      fontSize: 10,
      color: Colors.black54
    ),
    subtitle2: const TextStyle(fontSize: 18,color: Colors.black38),
    bodyText1: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
    bodyText2: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
    button: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
  ),
);