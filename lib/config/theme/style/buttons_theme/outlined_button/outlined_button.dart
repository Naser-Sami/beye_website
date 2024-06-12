import '/app/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/config/config.dart';
import '/core/core.dart';

OutlinedButtonThemeData? _outlinedButtonTheme() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: EdgeInsets.zero,
      fixedSize: Size(AppSize.ws66, AppSize.hs40),
      textStyle: getBodyMedium(
        fontWeight: FontWeightManager.semiBold,
      ),
      // disabledForegroundColor: BlocProvider.of<ThemeCubit>(sl<NavigationService>().scaffoldKey.currentState!.context, listen: true).textGrey(),
      disabledForegroundColor:
          Provider.of<ThemeManager>(buildContext!).textGrey(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppRadius.r08,
        ),
      ),
    ),
  );
}

OutlinedButtonThemeData? get outlinedButtonTheme => _outlinedButtonTheme();
