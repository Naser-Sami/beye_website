// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class WhyBeye extends StatelessWidget {
  const WhyBeye({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Column(
      children: [
        SizedBox(
          height: r.width(AppSize.ws200),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: r.padding(AppSize.hs05),
                child: TextComponent(
                  'Why Beye?',
                  style: TextStyle(
                    color: t.primary(),
                    fontSize: r.fontSize(FontSize.s98),
                    fontWeight: FontWeight.bold,
                    fontFamily: Constants.primaryFont,
                  ),
                ),
              ),
              Positioned(
                top: r.padding(AppSize.hs65),
                child: TextComponent(
                  'Solutions',
                  style: TextStyle(
                    color: t.primarySoftLight(),
                    fontSize: r.fontSize(FontSize.s100),
                    letterSpacing: 3.0,
                    fontFamily: Constants.secondaryFont,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: r.padding(1400),
          child: TextComponent(
            "Beye is the only comprehensive solution for banks in the business intelligence market, our solution is designed by professional bankers with over 20 years of experience .Beye stands out of other solutions in that it addresses in detail all the Key Performance Indicators that are required to manage a banking Institution and all its departments.",
            style: TextStyle(
              fontSize: r.fontSize(FontSize.s24),
              color: t.textGrey(),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(
          height: r.padding(120),
        ),
      ],
    );
  }
}
