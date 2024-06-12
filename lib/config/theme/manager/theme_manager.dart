// Packages
import 'package:flutter/material.dart';

// Files
import '../../../app/app.dart';
import '/core/core.dart';

enum ThemeMODE {
  light,
  dark,
  system,
}

class ThemeManager extends ChangeNotifier {
  bool darkModeActive = false;
  bool useDynamicTheme = true;

  void systemTheme(v) {
    isDarkMode = v;
    darkModeActive = v;
  }

  ThemeMode? themeMode([ThemeMODE? t]) {
    if (t != null) {
      switch (t) {
        case ThemeMODE.light:
          useDynamicTheme = false;
          darkModeActive = false;
          isDarkMode = false;
          return ThemeMode.light;

        case ThemeMODE.dark:
          useDynamicTheme = false;
          darkModeActive = true;
          isDarkMode = true;
          return ThemeMode.dark;

        case ThemeMODE.system:
          useDynamicTheme = true;
          darkModeActive = true;
          return ThemeMode.system;
      }
    } else {
      useDynamicTheme = true;
      darkModeActive = true;
      return ThemeMode.system;
    }
  }

  Color white = const Color(0xFFFFFFFF);
  Color orange = const Color(0xFFFC9F35);
  Color green = const Color(0xFF47A809);
  Color orange2 = const Color(0xFFF79F1A);

  LinearGradient shimmerGradientLight = const LinearGradient(
    colors: [
      Color(0xFFdbdbdb),
      Color(0xFFe5e5e5),
      Color(0xFFefefef),
    ],
    stops: [0.1, 0.3, 0.4],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );

  LinearGradient shimmerGradientDarker = const LinearGradient(
    colors: [
      LTColors.textGrey,
      LTColors.textGrey,
      LTColors.textGrey,
    ],
    stops: [0.1, 0.3, 0.4],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );

  LinearGradient shimmerGradient() {
    if (isDarkMode) {
      return shimmerGradientDarker;
    } else {
      return shimmerGradientLight;
    }
  }

  // *****************************
  // ******     Palette     ******
  // *****************************
  List<Color> palette() {
    if (isDarkMode) {
      return [
        DTColors.primaryDark,
        DTColors.primary,
        DTColors.primaryLight,
        DTColors.fall,
      ];
    } else {
      return [
        LTColors.primaryDark,
        LTColors.primary,
        LTColors.primaryLight,
        LTColors.fall,
      ];
    }
  }

  // *****************************
  // ******   Background    ******
  // *****************************
  Color background() {
    if (isDarkMode) {
      return DTColors.background;
    } else {
      return LTColors.background;
    }
  }

  // *****************************
  // ******     Surface     ******
  // *****************************
  Color surface() {
    if (isDarkMode) {
      return DTColors.surface;
    } else {
      return LTColors.surface;
    }
  }

  // *****************************
  // ******    OnSurface    ******
  // *****************************
  Color onSurface() {
    if (isDarkMode) {
      return DTColors.onSurface;
    } else {
      return LTColors.onSurface;
    }
  }

  // *****************************
  // ******     Outline     ******
  // *****************************
  Color outline() {
    if (isDarkMode) {
      return DTColors.outline;
    } else {
      return LTColors.outline;
    }
  }

  // *****************************
  // ******     Primary     ******
  // *****************************
  Color primary() {
    if (isDarkMode) {
      return DTColors.primary;
    } else {
      return LTColors.primary;
    }
  }

  // *****************************
  // ******   Primary Dark  ******
  // *****************************
  Color primaryDark() {
    if (isDarkMode) {
      return DTColors.primaryDark;
    } else {
      return LTColors.primaryDark;
    }
  }

  // *****************************
  // ******   Primary Light ******
  // *****************************
  Color primaryLight() {
    if (isDarkMode) {
      return DTColors.primaryLight;
    } else {
      return LTColors.primaryLight;
    }
  }

  // *****************************
  // **** Primary Soft Light *****
  // *****************************
  Color primarySoftLight() {
    if (isDarkMode) {
      return DTColors.primarySoftLight;
    } else {
      return LTColors.primarySoftLight;
    }
  }

  // *****************************
  // ******    Secondary    ******
  // *****************************
  Color secondary() {
    // return LTColors.secondary;

    if (isDarkMode) {
      return DTColors.secondary;
    } else {
      return LTColors.secondary;
    }
  }

  // *****************************
  // ******       Text       *****
  // *****************************
  Color text() {
    if (isDarkMode) {
      return DTColors.text;
    } else {
      return LTColors.text;
    }
  }

  // *****************************
  // ******        Up       ******
  // *****************************
  Color up() {
    if (isDarkMode) {
      return DTColors.up;
    } else {
      return LTColors.up;
    }
  }

  // *****************************
  // ******       fall      ******
  // *****************************
  Color fall() {
    if (isDarkMode) {
      return DTColors.fall;
    } else {
      return LTColors.fall;
    }
  }

  // *****************************
  // ******      error      ******
  // *****************************
  Color error() {
    if (isDarkMode) {
      return DTColors.error;
    } else {
      return LTColors.error;
    }
  }

  // *****************************
  // *****    Fill Color    ******
  // *****************************
  Color fillColor() {
    if (isDarkMode) {
      return DTColors.fillColor;
    } else {
      return LTColors.fillColor;
    }
  }

  // *****************************
  // *****   Border Color   ******
  // *****************************
  Color borderColor() {
    if (isDarkMode) {
      return DTColors.borderColor;
    } else {
      return LTColors.borderColor;
    }
  }

  // *****************************
  // *****  Grey BG Color   ******
  // *****************************
  Color greyBackground() {
    if (isDarkMode) {
      return DTColors.greyBackground;
    } else {
      return LTColors.greyBackground;
    }
  }

  // *****************************
  // ****  Text Grey Color  ******
  // *****************************
  Color textGrey() {
    if (isDarkMode) {
      return DTColors.textGrey;
    } else {
      return LTColors.textGrey;
    }
  }

  // *****************************
  // ******   Shadow Color  ******
  // *****************************
  Color shadowColor() {
    // return LTColors.background;

    if (isDarkMode) {
      return DTColors.shadowColor;
    } else {
      return LTColors.shadowColor;
    }
  }
}
