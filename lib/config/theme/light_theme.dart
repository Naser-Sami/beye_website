// Packages
import 'package:flutter/material.dart';
import '/core/core.dart';

// Files
import '../config.dart';

ThemeData _lightTheme = ThemeData(
  // ... M3
  useMaterial3: true,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: SystemFontFamily.fontFamily,

  // .. system brightness
  brightness: Brightness.light,

  // .. system colors
  colorScheme: lightColorScheme,

  // .. text styling
  textTheme: textTheme,

  // .. app bar theme
  appBarTheme: lightAppBarTheme,

  // .. elevated button theme
  elevatedButtonTheme: lightElevatedButtonTheme,

  // .. outlined button theme
  outlinedButtonTheme: outlinedButtonTheme,

  // .. text button theme
  textButtonTheme: textButtonLightTheme,

  // .. text fields decoration
  inputDecorationTheme: lightDecorationTheme,

  // .. card theme
  cardTheme: lightCardTheme,
  highlightColor: Colors.transparent,

  // ..
  chipTheme: chipThemeLight,

  // .. Divider Color
  dividerColor: Colors.transparent,

  // .. Slider Theme
  sliderTheme: const SliderThemeData(
    trackHeight: 4,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
    thumbColor: LTColors.primary,
    inactiveTrackColor: LTColors.borderColor,
  ),

  // .. List Tile
  listTileTheme: const ListTileThemeData(
    dense: true,
    contentPadding: EdgeInsets.zero,
  ),

  // .. Expansion Tile Theme Data
  expansionTileTheme: const ExpansionTileThemeData(),
);

ThemeData get lightTheme => _lightTheme;
