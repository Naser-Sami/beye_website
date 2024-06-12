// Packages
import 'package:flutter/material.dart';
import '/core/utils/utils.dart';

// Files
import '../config.dart';

ThemeData _darkTheme = ThemeData(
  // ... M3
  useMaterial3: true,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
  fontFamily: SystemFontFamily.fontFamily,

  // .. system brightness
  brightness: Brightness.dark,

  // .. system colors
  colorScheme: darkColorScheme,

  // .. text styling
  textTheme: textTheme,

  // .. app bar theme
  appBarTheme: darkAppBarTheme,

  // .. elevated button theme
  elevatedButtonTheme: darkElevatedButtonTheme,

  // .. outlined button theme
  outlinedButtonTheme: outlinedButtonTheme,

  // .. text button theme
  textButtonTheme: textButtonDarkTheme,

  // .. text fields decoration
  inputDecorationTheme: darkDecorationTheme,

  // .. card theme
  cardTheme: darkCardTheme,

  // ..
  highlightColor: Colors.transparent,

  // .. Divider Color
  dividerColor: Colors.transparent,

  // .. Slider Theme
  sliderTheme: const SliderThemeData(
    trackHeight: 4,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
    thumbColor: DTColors.primary,
    inactiveTrackColor: DTColors.borderColor,
  ),

  // .. List Tile
  listTileTheme: const ListTileThemeData(
    dense: true,
    contentPadding: EdgeInsets.zero,
  ),
);

ThemeData get darkTheme => _darkTheme;
