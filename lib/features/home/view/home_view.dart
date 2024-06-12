// ignore_for_file: constant_identifier_names

// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';

const String _WEB_KEY = 'home-view-web-or-desktop';
const String _TABLET_KEY = 'home-view-tablet';
const String _MOBILE_KEY = 'home-view-mobile';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      // Mobile View
      mobileLayout: _MobileLayout(
        key: Key(_MOBILE_KEY),
      ),

      // Tablet View
      tabletLayout: _TabletLayout(
        key: Key(_TABLET_KEY),
      ),

      // Web or Desktop View
      webOrDesktopLayout: _WebOrDesktopLayout(
        key: Key(_WEB_KEY),
      ),
    );
  }
}

class _WebOrDesktopLayout extends StatelessWidget {
  const _WebOrDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeManager>(builder: (context, p, _) {
      return Scaffold(
        key: const Key(_WEB_KEY),
        floatingActionButton: Visibility(
          visible: p.show,
          child: FloatingActionButton(
            child: const Icon(Icons.arrow_upward),
            onPressed: () {
              p.scrollToTop();
            },
          ),
        ),
        body: const WebHomeViewBody(),
      );
    });
  }
}

class _TabletLayout extends StatelessWidget {
  const _TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: Key(_TABLET_KEY),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      key: Key(_MOBILE_KEY),
    );
  }
}
