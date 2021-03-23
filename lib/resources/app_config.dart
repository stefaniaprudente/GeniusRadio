import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  AppConfig(
    this.host, {
    this.env,
    @required this.child,
  });

  final String host;
  final String env;
  final Widget child;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
