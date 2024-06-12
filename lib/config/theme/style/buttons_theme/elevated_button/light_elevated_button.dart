import 'package:flutter/material.dart';

import '/config/config.dart';
import '/core/core.dart';

ElevatedButtonThemeData? _lightElevatedButtonTheme() {
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
      foregroundColor: LTColors.surface,
      disabledForegroundColor: LTColors.secondary,
      disabledBackgroundColor: LTColors.outline,
      backgroundColor: LTColors.primary,
      surfaceTintColor: LTColors.surface,
      shadowColor: null,

      // elevated button default shape
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.r16),
        side: const BorderSide(
          color: LTColors.primary,
        ),
      ),
    ),
  );
}

ElevatedButtonThemeData? get lightElevatedButtonTheme =>
    _lightElevatedButtonTheme();
