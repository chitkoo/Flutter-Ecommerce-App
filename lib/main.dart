import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app/utils/theme.dart';

import 'views/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, __, ___) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: getAppTheme,
          home: const HomeScreen(),
        );
      },
    );
  }
}
