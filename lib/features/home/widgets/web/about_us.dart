// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class HomeViewAboutUs extends StatelessWidget {
  const HomeViewAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return Container(
          key: p.navigatorKeys[6],
          height: r.height(AppSize.hs378),
          width: mq(context).width,
          padding: EdgeInsets.symmetric(
            horizontal: r.padding(AppPadding.p140),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 40,
                child: Center(
                  child: SelectableTextComponent(
                    'About Us',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: t.primary(),
                      fontSize: r.fontSize(FontSize.s98),
                      fontWeight: FontWeight.bold,
                      fontFamily: Constants.primaryFont,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableTextComponent(
                      'Beye is a pioneering fintech company specialized in providing Intelligent business Analytics solutions for the banking sector',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: t.textGrey(),
                        fontSize: r.fontSize(FontSize.s24),
                        fontFamily: Constants.primaryFont,
                      ),
                    ),
                    SizedBox(
                      height: r.height(AppSize.hs40),
                    ),
                    BaseContainerComponent(
                      onTap: () {
                        //
                      },
                      cursor: SystemMouseCursors.click,
                      height: r.padding(AppSize.hs64),
                      width: r.width(AppSize.ws180),
                      color: t.fall(),
                      isWithBorder: false,
                      child: Center(
                        child: TextComponent(
                          'Learn More',
                          style: TextStyle(
                              color: t.white,
                              fontSize: r.fontSize(FontSize.s20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
