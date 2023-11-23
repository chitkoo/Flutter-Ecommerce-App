import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData get getAppTheme {
  return ThemeData.light().copyWith(
    textTheme: GoogleFonts.plusJakartaSansTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    // appBarTheme: AppBarTheme(
    //   backgroundColor: Colors.white,
    //   centerTitle: true,
    //   systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
    //     systemNavigationBarColor: Colors.white,
    //     statusBarColor: Colors.transparent,
    //   ),
    //   surfaceTintColor: Colors.transparent,
    // ),
    // navigationBarTheme: NavigationBarThemeData(
    //   backgroundColor: Colors.white,
    //   surfaceTintColor: Colors.white,
    //   indicatorColor: secondary,
    //   labelTextStyle: const MaterialStatePropertyAll(
    //     TextStyle(
    //       color: Colors.black,
    //     ),
    //   ),
    //   labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
    //   iconTheme: MaterialStateProperty.resolveWith((states) {
    //     if (states.contains(MaterialState.selected)) {
    //       return const IconThemeData(color: Colors.white);
    //     }
    //     return const IconThemeData(color: primary);
    //   }),
    // ),
  );
}
