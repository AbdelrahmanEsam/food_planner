import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.libreFranklin(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displayLarge: GoogleFonts.libreFranklin(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.libreFranklin(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.libreFranklin(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.libreFranklin(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );


  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.libreFranklin(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displayLarge: GoogleFonts.libreFranklin(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.libreFranklin(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.libreFranklin(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.libreFranklin(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );


  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
    (states) {
      return Colors.black;
    },
    ),
    ),
    appBarTheme: const AppBarTheme(
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    ),
    floatingActionButtonTheme: const
    FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
    ),
      bottomNavigationBarTheme: const
      BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }


  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const
      FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const
      BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}

