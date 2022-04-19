import 'package:bwalletflutter/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const colors = ThemeColors();

  static ThemeData define() {
    return ThemeData(
      fontFamily: "IBMPlexSans",
      primaryColor: colors.primary,
    );
  }

  const AppTheme._();
}
