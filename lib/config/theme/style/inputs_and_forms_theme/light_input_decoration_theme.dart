// Package
import 'package:flutter/material.dart';

// Files
import '/core/core.dart';
import '/config/config.dart';

// Input Decoration Theme
InputDecorationTheme _lightDecorationTheme = InputDecorationTheme(
  // .. content padding
  contentPadding: EdgeInsets.symmetric(
      vertical: AppPadding.p12, horizontal: AppPadding.p16),

  // .. hint style
  hintStyle: getTitleSmall(color: LTColors.textGrey),
  labelStyle: getTitleSmall(color: LTColors.text),
  errorStyle: getTitleSmall(color: LTColors.error),

  filled: true,
  fillColor: LTColors.fillColor,

  // enabled border style
  enabledBorder: OutlineInputBorder(
    // borderSide: BorderSide(
    //     color: LTColors.secondary(),
    //     width: AppSize.ws01),
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(AppRadius.r16),
    ),
  ),

  // focused border style
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: LTColors.primary, width: AppSize.ws01),
    borderRadius: BorderRadius.all(
      Radius.circular(AppRadius.r16),
    ),
  ),

  // error border style
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: LTColors.error, width: AppSize.ws01),
    borderRadius: BorderRadius.all(
      Radius.circular(AppRadius.r16),
    ),
  ),

  // focused border style
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: LTColors.primary, width: AppSize.ws01),
    borderRadius: BorderRadius.all(
      Radius.circular(AppRadius.r16),
    ),
  ),
);

InputDecorationTheme get lightDecorationTheme => _lightDecorationTheme;
