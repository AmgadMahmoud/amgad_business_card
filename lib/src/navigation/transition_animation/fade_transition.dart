import 'package:flutter/material.dart';

class FadePageTransition extends Page<void> {
  final Widget child;

  const FadePageTransition({required this.child, super.key});

  @override
  Route<void> createRoute(BuildContext context) {
    return PageRouteBuilder<void>(
      settings: this,
      transitionDuration: const Duration(milliseconds: 100),
      reverseTransitionDuration: const Duration(milliseconds: 100),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          child,
    );
  }
}
