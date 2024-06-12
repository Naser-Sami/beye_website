// Packages
import 'package:flutter/material.dart';

// Files
import '/core/core.dart';
import '/config/theme/theme.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color? color,
    TextDecoration? decoration, Color? decorationColor) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: SystemFontFamily.fontFamily,
    color: color,
    fontWeight: fontWeight,
    decoration: decoration,
    decorationColor: decorationColor,
  );
}

TextStyle getDisplayLarge(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.displayLarge_57,
    fontWeight ?? FontWeightManager.bold,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getDisplayMedium(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.displayMedium_45,
    fontWeight ?? FontWeightManager.medium,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getDisplaySmall(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.displaySmall_36,
    fontWeight ?? FontWeightManager.regular,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getHeadlineLarge(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.headlineLarge_30,
    fontWeight ?? FontWeightManager.bold,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getHeadlineMedium(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.headlineMedium_26,
    fontWeight ?? FontWeightManager.medium,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getHeadlineSmall(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.headlineSmall_24,
    fontWeight ?? FontWeightManager.semiBold,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getTitleLarge(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.titleLarge_22,
    fontWeight ?? FontWeightManager.bold,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getTitleMedium(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.titleMedium_18,
    fontWeight ?? FontWeightManager.semiBold,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getTitleSmall(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.titleSmall_14,
    fontWeight ?? FontWeightManager.regular,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getLabelLarge(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.labelLarge_14,
    fontWeight ?? FontWeightManager.bold,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getLabelMedium(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.labelMedium_12,
    fontWeight ?? FontWeightManager.medium,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getLabelSmall(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.labelSmall_11,
    fontWeight ?? FontWeightManager.regular,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getBodyLarge(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.bodyLarge_18,
    fontWeight ?? FontWeightManager.semiBold,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getBodyMedium(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.bodyMedium_14,
    fontWeight ?? FontWeightManager.regular,
    color,
    decoration,
    decorationColor,
  );
}

TextStyle getBodySmall(
    {double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? decorationColor}) {
  return _getTextStyle(
    fontSize ?? FontSize.bodySmall_12,
    fontWeight ?? FontWeightManager.regular,
    color ?? sl<ThemeManager>().textGrey(),
    decoration,
    decorationColor,
  );
}
