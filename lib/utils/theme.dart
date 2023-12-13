import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'colors.dart';

ThemeData get getAppTheme {
  return ThemeData.light().copyWith(
    appBarTheme: _getAppBarTheme(),
    navigationBarTheme: _getNavBarTheme(),
    colorScheme: ColorScheme.fromSeed(seedColor: primary),
    textTheme: GoogleFonts.dmSansTextTheme().copyWith(
      titleMedium: GoogleFonts.dmSans(
        fontSize: 17.sp,
        color: primaryTextColor,
      ),
      bodyMedium: GoogleFonts.dmSans(
        fontSize: 15.sp,
        color: primaryTextColor,
      ),
    ),
    scaffoldBackgroundColor: Colors.grey.shade100,
    iconTheme: const IconThemeData(color: primary),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(iconSize: 25),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      surfaceTintColor: Colors.transparent,
      color: Colors.grey.shade100,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primary,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.w),
        ),
      ),
    ),
  );
}

AppBarTheme _getAppBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.grey.shade100,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(
      fontSize: 17.sp,
      color: Colors.black,
      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    ),
  );
}

NavigationBarThemeData _getNavBarTheme() {
  return NavigationBarThemeData(
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
  );
}
