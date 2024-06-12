// ignore_for_file: curly_braces_in_flow_control_structures

// Package
import 'package:flutter/material.dart';

// Files
import 'adaptive_design.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.webOrDesktopLayout});

  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget webOrDesktopLayout;

  @override
  Widget build(BuildContext context) {
    if (isHandset(context))
      return mobileLayout;
    else if (isTablet(context))
      return tabletLayout;
    else if (isDesktop(context))
      return webOrDesktopLayout;
    else
      return const SizedBox();
  }
}
