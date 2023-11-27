import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/utils/colors.dart';

ThemeData get getAppTheme {
  return ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: primary),
    textTheme: GoogleFonts.plusJakartaSansTextTheme(),
    scaffoldBackgroundColor: Colors.grey.shade100,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(iconSize: 25),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
    ),
  );
}
