import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color hintColor = Color.fromARGB(255, 105, 105, 105);

ThemeData lightTheme() => ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0xffeaeaea),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.jost(
      fontSize: 208,
      fontWeight: FontWeight.bold,
      color: Color(0xff262626),
    ),
    headlineMedium: GoogleFonts.jost(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Color(0xff262626),
    ),
    headlineSmall: GoogleFonts.jost(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xff262626),
    ),
    labelSmall: GoogleFonts.jost(fontSize: 15, color: hintColor),
    labelMedium: GoogleFonts.jost(fontSize: 17, color: hintColor),
  ),
);

ThemeData darkTheme() => ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xff262626),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.jost(
      fontSize: 208,
      fontWeight: FontWeight.bold,
      color: Color(0xffededed),
    ),
    headlineMedium: GoogleFonts.jost(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Color(0xffededed),
    ),
    headlineSmall: GoogleFonts.jost(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xffededed),
    ),
    labelSmall: GoogleFonts.jost(fontSize: 15, color: hintColor),
    labelMedium: GoogleFonts.jost(fontSize: 17, color: hintColor),
  ),
);
