
import 'package:flutter/cupertino.dart';

class MenuOptions {

  final IconData icon;
  final String route;
  final String name;
  final Widget screen;

  MenuOptions({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen
  });

}