// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class HomeViewOurProducts extends StatelessWidget {
  const HomeViewOurProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    List<Map<String, String>> data = [
      {'icon': 'analysis', 'title': '', 'description': ''},
      {'icon': 'data_model', 'title': '', 'description': ''},
      {'icon': 'etl', 'title': '', 'description': ''},
      {'icon': 'kpi_library', 'title': '', 'description': ''},
    ];

    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return SizedBox(
          child: Container(
            height: r.padding(1623),
            width: mq(context).width,
            padding: EdgeInsets.symmetric(
              horizontal: r.padding(140),
              vertical: r.padding(80),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back-ground-1.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our',
                  style: TextStyle(
                    fontSize: r.fontSize(FontSize.s80),
                    color: t.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  'Products',
                  style: TextStyle(
                    fontSize: r.fontSize(FontSize.s130),
                    color: t.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: r.padding(AppSize.hs48),
                ),
                Container(
                  height: r.padding(695),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/back-ground-6.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 35,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: r.padding(80),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Explore Our Banking',
                                style: TextStyle(
                                  fontSize: r.fontSize(FontSize.s24),
                                  color: t.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'Solutions',
                                style: TextStyle(
                                  fontSize: r.fontSize(FontSize.s80),
                                  color: t.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: r.padding(AppSize.hs16)),
                              Text(
                                'Unlock efficiency and success with our suite of solutions',
                                style: TextStyle(
                                  fontSize: r.fontSize(FontSize.s22),
                                  color: t.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 65,
                        child: SizedBox(
                          height: r.padding(695),
                          child: const PngImageWidget(
                            fit: BoxFit.fill,
                            name: 'mockup_5',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: r.padding(AppSize.hs48)),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 4; i++) ...[
                        BaseContainerComponent(
                          width: r.width(526),
                          height: r.padding(AppSize.hs230),
                          color: Colors.black.withOpacity(0.75),
                          isWithBorder: false,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgIconWidget(name: data[i]['icon'] ?? "")
                            ],
                          ),
                        ),
                        SizedBox(width: r.padding(AppSize.hs32)),
                      ],
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: r.padding(AppSize.hs64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWithHoverEffectComponent(
                        onEnter: (event) => p.onHover(true),
                        onExit: (event) => p.onHover(false),
                        isHover: p.isHover,
                        text: 'See All Products ',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
