// Packages
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class HomeViewOurClientele extends StatelessWidget {
  const HomeViewOurClientele({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Consumer<HomeManager>(builder: (context, p, _) {
      return Container(
        height: r.height(AppSize.hs670),
        width: mq(context).width,
        padding: EdgeInsets.symmetric(
          horizontal: r.padding(AppPadding.p140),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextComponent(
              'Our Clientele',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: t.primary(),
                fontSize: r.fontSize(FontSize.s98),
                fontWeight: FontWeight.bold,
                fontFamily: Constants.primaryFont,
              ),
            ),
            SizedBox(
              height: r.height(AppSize.hs40),
            ),
            BaseContainerComponent(
              height: r.height(AppSize.hs400),
              width: mq(context).width,
              padding: EdgeInsets.zero,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < 4; i++) ...[
                          SizedBox(
                            width: r.width(AppSize.ws180),
                            child: Center(
                              child: PngImageWidget(
                                name: 'central_bank_of_jordan',
                                height: r.padding(AppSize.hs118),
                                width: r.width(AppSize.ws180),
                              ),
                            ),
                          ),
                          if (i != 3)
                            Container(
                              height: r.height(AppSize.hs200),
                              color: t.borderColor(),
                              width: 1,
                            ),
                        ],
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: t.borderColor(),
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < 4; i++) ...[
                          MouseRegion(
                            onEnter: (event) {
                              p.onLogoHover(true);
                            },
                            onExit: (event) {
                              p.onLogoHover(false);
                            },
                            onHover: (event) {},
                            child: SizedBox(
                              width: r.width(AppSize.ws180),
                              child: Center(
                                child: SvgIconWidget(
                                  name: 'rak_bank',
                                  height: r.padding(AppSize.hs118),
                                  color: p.isLogoHover ? null : t.textGrey(),
                                ),
                              ),
                            ),
                          ),
                          if (i != 3)
                            Container(
                              height: r.height(AppSize.hs200),
                              color: t.borderColor(),
                              width: 1,
                            ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
