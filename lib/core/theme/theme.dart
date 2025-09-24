import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme() => ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0xffeaeaea),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.jost(
      fontSize: 64,
      fontWeight: FontWeight.bold,
      color: Color(0xff262626),
    ),
    headlineSmall: GoogleFonts.jost(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Color(0xff262626),
    ),
    labelSmall: GoogleFonts.jost(
      fontSize: 12,
      color: Color(0xff8f8f8f),
    ),
  ),
);

ThemeData darkTheme() => ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xff262626),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.jost(
      fontSize: 64,
      fontWeight: FontWeight.bold,
      color: Color(0xffededed),
    ),
    headlineSmall: GoogleFonts.jost(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Color(0xffededed),
    ),
    labelSmall: GoogleFonts.jost(
      fontSize: 12,
      color: Color(0xff8f8f8f),
    ),
  ),
);
