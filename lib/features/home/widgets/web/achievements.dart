// Packages
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class HomeViewAchievements extends StatelessWidget {
  const HomeViewAchievements({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Container(
      height: r.height(AppSize.hs378),
      width: mq(context).width,
      color: t.greyBackground(),
      padding: EdgeInsets.symmetric(
        horizontal: r.padding(AppPadding.p140),
      ),
      child: Row(
        children: [
          // Lottie.asset('assets/animations/rocket.json')
        ],
      ),
    );
  }
}
