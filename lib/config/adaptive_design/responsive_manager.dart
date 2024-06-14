// Packages
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Files
import '/core/core.dart';

class ResponsiveManager extends ChangeNotifier {
  double height(double value) {
    return value.r;
  }

  double width(double value) {
    return value.r;
  }

  double response(double value) {
    return value.r;
  }

  double margin(double value) {
    return value.r;
  }

  double fontSize(double value) {
    return value.sp;
  }

  getFullSize(BuildContext context) {
    AppSize.fullHeight = MediaQuery.of(context).size.height;
    AppSize.fullWidth = MediaQuery.of(context).size.width;
  }
}
