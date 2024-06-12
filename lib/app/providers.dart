import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// files
import '/core/core.dart';
import '/config/config.dart';
// import '../features/features.dart';

Widget providers(Widget child) => MultiProvider(
      providers: [
        ListenableProvider<ThemeManager>(create: (_) => sl<ThemeManager>()),
        ListenableProvider<ResponsiveManager>(
            create: (_) => sl<ResponsiveManager>()),
        ListenableProvider<HomeManager>(create: (_) => sl<HomeManager>()),
      ],
      child: child,
    );
