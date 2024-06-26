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
      {
        'icon': 'analysis',
        'title': 'Banking Analytics',
        'description':
            'Elevate your operations with our Banking Analytics solution. Real-time insights, predictive analytics, and customizable dashboards for informed decision-making and growth.'
      },
      {
        'icon': 'data_model',
        'title': 'Banking Data Model',
        'description':
            'Build a robust foundation with our adaptable Banking Data Model. Accommodate diverse data sources, ensuring comprehensive and efficient processing.'
      },
      {
        'icon': 'etl',
        'title': 'ETL Application',
        'description':
            'Streamline data processing with our powerful ETL Application. Optimize information flow, ensuring quality, security, and swift processing.'
      },
      {
        'icon': 'kpi_library',
        'title': 'KPI Library',
        'description':
            'Access a rich repository of Banking KPIs. Facilitate performance evaluation, strategic planning, and efficient decision-making.'
      },
    ];

    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return SizedBox(
          child: Container(
            height: r.response(1623),
            width: mq(context).width,
            padding: EdgeInsets.symmetric(
              horizontal: r.response(140),
              vertical: r.response(80),
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
                SelectableTextComponent(
                  'Our',
                  style: TextStyle(
                    fontSize: r.fontSize(FontSize.s80),
                    color: t.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SelectableTextComponent(
                  'Products',
                  style: TextStyle(
                    fontSize: r.fontSize(FontSize.s130),
                    color: t.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: r.response(AppSize.hs48),
                ),
                Container(
                  height: r.response(695),
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
                            horizontal: r.response(80),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SelectableTextComponent(
                                'Explore Our Banking',
                                style: TextStyle(
                                  fontSize: r.fontSize(FontSize.s24),
                                  color: t.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SelectableTextComponent(
                                'Solutions',
                                style: TextStyle(
                                  fontSize: r.fontSize(FontSize.s80),
                                  color: t.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: r.response(AppSize.hs16)),
                              SelectableTextComponent(
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
                          height: r.response(695),
                          child: const PngImageWidget(
                            fit: BoxFit.fill,
                            name: 'mockup_5',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: r.response(AppSize.hs48)),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 4; i++) ...[
                        BaseContainerComponent(
                          width: r.width(526),
                          height: r.response(AppSize.hs230),
                          color: Colors.black.withOpacity(0.75),
                          padding: EdgeInsets.symmetric(
                            horizontal: r.response(40),
                          ),
                          isWithBorder: false,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgIconWidget(name: data[i]['icon'] ?? ""),
                              SizedBox(
                                height: r.response(8),
                              ),
                              SelectableTextComponent(
                                data[i]['title'] ?? "",
                                style: TextStyle(
                                  fontSize: r.fontSize(FontSize.s24),
                                  color: t.white,
                                ),
                              ),
                              SizedBox(
                                height: r.response(8),
                              ),
                              SelectableTextComponent(
                                data[i]['description'] ?? "",
                                style: TextStyle(
                                  fontSize: r.fontSize(FontSize.s16),
                                  color: t.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: r.response(AppSize.hs32)),
                      ],
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: r.response(AppSize.hs64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWithHoverEffectComponent(
                        onEnter: (event) => p.onHover(true),
                        onExit: (event) => p.onHover(false),
                        isHover: p.isHover,
                        text: 'See All Products ',
                        trailing: SvgIconWidget(
                          name: 'arrow',
                          width: r.response(24),
                        ),
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
