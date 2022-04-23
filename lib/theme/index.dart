import 'package:bwalletflutter/theme/colors.dart';
import 'package:bwalletflutter/theme/fonts.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const colors = ThemeColors();

  static const fonts = ThemeFonts();

  static ThemeData define() {
    return ThemeData(
      fontFamily: fonts.ibmPlexSans,
      primaryColor: colors.primary,
    );
  }

  const AppTheme._();
}
