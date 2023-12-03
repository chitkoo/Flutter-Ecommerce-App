import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData get getAppTheme {
  return ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.white,
      indicatorColor: primary,
      surfaceTintColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      iconTheme: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return const IconThemeData(
              color: Colors.white,
            );
          }
          return const IconThemeData(
            color: Colors.black,
          );
        },
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: primary),
    textTheme: GoogleFonts.plusJakartaSansTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(iconSize: 25),
    ),
  );
}
