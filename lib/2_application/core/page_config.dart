import 'package:flutter/widgets.dart';

class PageConfig {
  final String name;
  final IconData icon;
  final Widget child;

  const PageConfig({required this.name, required this.icon, Widget? child})
    : child = child ?? const Placeholder();
}
