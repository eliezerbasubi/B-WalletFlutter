import 'package:bwalletflutter/utils/assets.dart';
import 'package:flutter/material.dart';

@immutable
class ThemeColors {
  final primary = const Color(ColorCodes.primary);
  final secondary = const Color(ColorCodes.secondary);
  final tertiary = const Color(ColorCodes.tertiary);
  final black50 = const Color.fromARGB(0, 0, 0, 5);
  final red = const Color(ColorCodes.red);
  final gray = const Color(ColorCodes.gray);
  final gray10 = const Color(ColorCodes.gray10);

  const ThemeColors();
}
