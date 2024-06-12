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

    List<Map<String, dynamic>> data = [
      {'value': 15, 'title': 'Years of Experience'},
      {'value': 100, 'title': 'Banking Tech Experts'},
      {'value': 20, 'title': 'BEYE Clients'},
      {'value': 2000, 'title': "Number of KPI's"},
    ];

    return Container(
      height: r.height(AppSize.hs378),
      width: mq(context).width,
      color: t.greyBackground(),
      padding: EdgeInsets.symmetric(
        horizontal: r.padding(AppPadding.p140),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < data.length; i++)
            Row(
              children: [
                SizedBox(
                  width: r.padding(56),
                  height: r.padding(56),
                  child: Lottie.asset('assets/animations/rocket.json'),
                ),
                SizedBox(width: r.padding(24)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextComponent(
                      i == data.length - 1
                          ? "+${data[i]['value']}"
                          : data[i]['value'].toString(),
                      style: TextStyle(
                        fontSize: r.fontSize(64),
                        color: t.text(),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextComponent(
                      data[i]['title'].toString(),
                      style: TextStyle(
                        fontSize: r.fontSize(24),
                        color: t.text(),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
