// Packages
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

// Files
import 'routes_imports.dart';

/// #### ROUTER DELEGATE ####

final routerDelegate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    // Map<Pattern, dynamic Function(BuildContext, BeamState, Object?)> routes
    routes: {
      '/': (BuildContext context, BeamState state, Object? data) =>
          const BeamPage(
            key: ValueKey('home'),
            title: 'Home',
            child: HomeView(),
          ),
      '/products': (BuildContext context, BeamState state, Object? data) =>
          const BeamPage(
            key: ValueKey('products'),
            title: 'Products',
            child: Products(),
          ),
    },
  ).call,
);

/// #### END ROUTER DELEGATE ####
