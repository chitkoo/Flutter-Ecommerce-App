import 'package:flutter/material.dart';

PageRouteBuilder<dynamic> buildPageRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) =>
        page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;

      final tween = Tween(begin: begin, end: end);

      const curve = Curves.ease;

      final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}
