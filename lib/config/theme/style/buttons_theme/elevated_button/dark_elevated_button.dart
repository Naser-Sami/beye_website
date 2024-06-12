import 'package:flutter/material.dart';

import '/config/config.dart';
import '/core/core.dart';

ElevatedButtonThemeData? _darkElevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,

      // elevated button default width and height
      fixedSize: Size(AppSize.ws343, AppSize.hs50),
      textStyle: getTitleMedium(
        fontSize: FontSize.s18,
        fontWeight: FontWeightManager.semiBold,
      ),

      // .. styling colors
      foregroundColor: DTColors.text,
      disabledForegroundColor: DTColors.secondary,
      disabledBackgroundColor: DTColors.outline,
      backgroundColor: DTColors.primary,
      surfaceTintColor: DTColors.background,

      // elevated button default shape
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.r16),
        side: const BorderSide(
          color: DTColors.primary,
        ),
      ),
    ),
  );
}

ElevatedButtonThemeData? get darkElevatedButtonTheme =>
    _darkElevatedButtonTheme();
