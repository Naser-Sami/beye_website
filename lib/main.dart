// Packages
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Files
import 'app/app.dart';
import 'app/providers.dart';
import 'core/core.dart';

Future<void> main() async {
  // Ensure Flutter Binding Initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Ensure Service Locator is Started
  ServiceLocator().init();

  // Ensure Screen Size and Get Locations
  await Future.wait([
    ScreenUtil.ensureScreenSize(),
  ]);

  runApp(providers(const MyApp()));
}
