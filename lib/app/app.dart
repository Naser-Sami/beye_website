// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

// Packages
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

Brightness? brightness;
bool isDarkMode = false;
int themeValueInt = 2;
BuildContext? buildContext;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
  }
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.platformDispatcher.platformBrightness;
    _getCurrentTheme();

    super.initState();
  }

  Future<void> _getCurrentTheme() async {
    // final t = context.watch<ThemeProvider>();

    // themeValueInt = await sl<SharedPreferenceService>()
    //     .getIntValuesSF(SharedPreferencesKeys.themeMode);
    // t.themeMode(ThemeMODE.values[themeValueInt]);
    // isDarkMode = await sl<SharedPreferenceService>()
    //     .getBoolValuesSF(SharedPreferencesKeys.isDarkMode);
    // t.useDynamicTheme = await sl<SharedPreferenceService>()
    //     .getBoolValuesSF(SharedPreferencesKeys.useDynamicTheme);
    // t.darkModeActive = await sl<SharedPreferenceService>()
    //     .getBoolValuesSF(SharedPreferencesKeys.darkModeActive);
    // t.systemTheme(isDarkMode);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    //
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // fire when open the app from the background
      updateData();
    }
  }

  Future<void> updateData() async {
    // Func.refreshToken(context);
    // LoggerDebug.loggerDebugMessage(' >>> Updated data <<< ');
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    buildContext = context;

    return Consumer<ThemeManager>(
      builder: (context, p, _) {
        if (p.useDynamicTheme) {
          isDarkMode = false;
          // brightness =
          //     SchedulerBinding.instance.platformDispatcher.platformBrightness;
          // isDarkMode = (brightness == Brightness.dark);
          // p.systemTheme(isDarkMode);
        }

        return ScreenUtilInit(
          designSize: isDesktop(context)
              ? const Size(1920, 1080)
              : isTablet(context)
                  ? const Size(1024, 768)
                  : const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          ensureScreenSize: true,
          builder: (context, child) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: MaterialApp.router(
                routeInformationParser: BeamerParser(),
                routerDelegate: routerDelegate,
                title: AppStrings.appName,
                scrollBehavior: scrollBehavior,
                debugShowCheckedModeBanner: false,
                // themeMode: p.useDynamicTheme
                //     ? ThemeMode.system
                //     : (p.darkModeActive ? ThemeMode.dark : ThemeMode.light),
                theme: lightTheme,
                // darkTheme: darkTheme,
              ),
            );
          },
        );
      },
    );
  }
}
