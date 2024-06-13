// Packages
import 'package:flutter/material.dart';
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

    List<String> ourClientele = [
      'central_bank_of_jordan',
      'cairo_amman_bank',
      'bank_of_jordan',
      'rak_bank',
      'safa_bank',
      'gib_bank',
      'bank_albilad',
      'saudi_investment_bank'
    ];

    return Consumer<HomeManager>(builder: (context, p, _) {
      return Container(
        height: r.height(830),
        width: mq(context).width,
        padding: EdgeInsets.symmetric(
            horizontal: r.padding(260), vertical: r.padding(120)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SelectableTextComponent(
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
                        for (int i = 0; i < ourClientele.length - 4; i++) ...[
                          MouseRegion(
                            onEnter: (event) {
                              p.onLogoHover(true, i);
                            },
                            onExit: (event) {
                              p.onLogoHover(false, i);
                            },
                            onHover: (event) {},
                            child: SizedBox(
                              width: r.width(AppSize.ws180),
                              child: Center(
                                child: ColorFiltered(
                                  colorFilter: p.isLogoHover[i]
                                      ? const ColorFilter.mode(
                                          Colors.transparent,
                                          BlendMode.multiply,
                                        )
                                      : p.greyStyle,
                                  child: PngImageWidget(
                                    name: ourClientele[i],
                                    height: r.padding(AppSize.hs118),
                                    color:
                                        p.isLogoHover[i] ? null : t.textGrey(),
                                  ),
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
                        for (int i = 4; i < ourClientele.length; i++) ...[
                          MouseRegion(
                            onEnter: (event) {
                              p.onLogoHover(true, i);
                            },
                            onExit: (event) {
                              p.onLogoHover(false, i);
                            },
                            onHover: (event) {},
                            child: SizedBox(
                              width: r.width(AppSize.ws180),
                              child: Center(
                                child: ColorFiltered(
                                  colorFilter: p.isLogoHover[i]
                                      ? const ColorFilter.mode(
                                          Colors.transparent,
                                          BlendMode.multiply,
                                        )
                                      : p.greyStyle,
                                  child: PngImageWidget(
                                    name: ourClientele[i],
                                    height: r.padding(AppSize.hs118),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (i != ourClientele.length - 1)
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
