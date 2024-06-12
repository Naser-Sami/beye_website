// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class WebHomeViewBody extends StatelessWidget {
  const WebHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);

    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: p.scrollController,
          child: Column(
            children: [
              Container(
                width: mq(context).width,
                height: r.padding(AppSize.fullHeight) * 1.35,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/back-ground-1.png',
                    ),
                  ),
                ),
                child: const Stack(
                  children: [
                    HomeViewTopSection(),
                    HomeViewHeader(),
                  ],
                ),
              ),
              const HomeViewAboutUs(),
              const HomeViewAchievements(),
              const HomeViewOurClientele(),
              const HomeViewOurProducts(),
              const OurSolutions(),
            ],
          ),
        );
      },
    );
  }
}
