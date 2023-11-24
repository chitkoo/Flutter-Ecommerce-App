import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get getAppTheme {
  return ThemeData.light().copyWith(
    textTheme: GoogleFonts.plusJakartaSansTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(iconSize: 25),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
    ),
  );
}
