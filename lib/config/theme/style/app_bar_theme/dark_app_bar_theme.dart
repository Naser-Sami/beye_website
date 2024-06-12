import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/config/config.dart';
import '/core/core.dart';

AppBarTheme? _darkAppBarTheme = AppBarTheme(
  centerTitle: true,
  color: DTColors.background,
  elevation: AppSize.elevationZero,
  scrolledUnderElevation: AppSize.elevationZero,
  shadowColor: DTColors.secondary,
  titleTextStyle: getTitleMedium(),

  // systemOverlayStyle: SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  systemOverlayStyle: const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
    // systemNavigationBarColor: Colors.,
    // systemNavigationBarDividerColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
    // systemStatusBarContrastEnforced: true,
    // systemNavigationBarContrastEnforced: true,
  ),
);

AppBarTheme? get darkAppBarTheme => _darkAppBarTheme;