// Packages
import 'package:flutter/material.dart';

// File
import '/core/core.dart';
import '/config/theme/text/text_style.dart';

TextButtonThemeData _textButtonLightTheme() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: LTColors.text,
      textStyle: getTitleSmall(),
      padding: EdgeInsets.zero,
    ),
  );
}

TextButtonThemeData get textButtonLightTheme => _textButtonLightTheme();