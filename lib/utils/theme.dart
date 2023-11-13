import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get getAppTheme {
  return ThemeData.light().copyWith(
    useMaterial3: true,
    textTheme: GoogleFonts.montserratTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    ),
  );
}
