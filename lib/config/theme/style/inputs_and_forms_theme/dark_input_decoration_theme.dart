// Package
import 'package:flutter/material.dart';

// Files
import '/core/core.dart';
import '/config/config.dart';

// Input Decoration Theme
InputDecorationTheme _darkDecorationTheme = InputDecorationTheme(
  // .. content padding
  contentPadding: EdgeInsets.symmetric(
      vertical: AppPadding.p12, horizontal: AppPadding.p16),

  // .. hint style
  hintStyle: getTitleSmall(color: DTColors.textGrey),
  labelStyle: getTitleSmall(color: DTColors.text),
  errorStyle: getTitleSmall(color: DTColors.error),

  filled: true,
  fillColor: DTColors.fillColor,

  // enabled border style
  enabledBorder: OutlineInputBorder(
    // borderSide: BorderSide(
    //     color: DTColors.secondary(),
    //     width: AppSize.ws01),
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(AppRadius.r16),
    ),
  ),

  // focused border style
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: DTColors.primary, width: AppSize.ws01),
    borderRadius: BorderRadius.all(
      Radius.circular(AppRadius.r16),
    ),
  ),

  // error border style
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: DTColors.error, width: AppSize.ws01),
    borderRadius: BorderRadius.all(
      Radius.circular(AppRadius.r16),
    ),
  ),

  // focused border style
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: DTColors.primary, width: AppSize.ws01),
    borderRadius: BorderRadius.all(
      Radius.circular(AppRadius.r16),
    ),
  ),
);

InputDecorationTheme get darkDecorationTheme => _darkDecorationTheme;
