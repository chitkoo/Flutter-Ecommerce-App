import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData get getAppTheme {
  return ThemeData.light().copyWith(
    useMaterial3: true,
    textTheme: GoogleFonts.montserratTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: primary,
        statusBarColor: Colors.transparent,
      ),
      surfaceTintColor: Colors.transparent,
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: primary,
      surfaceTintColor: primary,
      indicatorColor: secondary,
      labelTextStyle: MaterialStatePropertyAll(
        TextStyle(
          color: Colors.white,
        ),
      ),
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      iconTheme: MaterialStatePropertyAll(
        IconThemeData(color: Colors.white),
      ),
    ),
  );
}
