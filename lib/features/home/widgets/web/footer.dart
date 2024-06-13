// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Consumer<HomeManager>(builder: (context, p, _) {
      return Container(
        height: r.height(460),
        width: mq(context).width,
        color: Colors.black,
        padding: EdgeInsets.only(top: r.padding(56)),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: r.padding(AppSize.ws219),
                          child: SvgIconWidget(
                            name: 'beye_logo_1',
                            width: r.width(AppSize.ws210),
                          ),
                        ),
                        SizedBox(
                          height: r.padding(97),
                        ),
                        SizedBox(
                          width: r.padding(AppSize.ws230),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: r.padding(24),
                                child: const SvgIconWidget(
                                  name: 'facebook',
                                ),
                              ),
                              SizedBox(
                                width: r.padding(24),
                                child: const SvgIconWidget(
                                  name: 'x',
                                ),
                              ),
                              SizedBox(
                                width: r.padding(24),
                                child: const SvgIconWidget(
                                  name: 'snapchat',
                                ),
                              ),
                              SizedBox(
                                width: r.padding(24),
                                child: const SvgIconWidget(
                                  name: 'instagram',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: r.padding(16),
                        ),
                        SelectableTextComponent(
                          '@beyegroup',
                          style: TextStyle(
                            fontSize: r.fontSize(24),
                            color: t.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SelectableTextComponent(
                          'Contacts',
                          style: TextStyle(
                            fontSize: r.fontSize(24),
                            color: t.white,
                          ),
                        ),
                        SizedBox(height: r.padding(32)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgIconWidget(name: 'location2', color: t.white),
                            SizedBox(width: r.padding(16)),
                            SizedBox(
                              width: r.padding(280),
                              child: SelectableTextComponent(
                                "Dabouq – Kheir Al dein al Maani Street Juresat Plaza 1 bulding – Second Floor",
                                style: TextStyle(
                                  fontSize: r.fontSize(16),
                                  color: t.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: r.padding(24)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgIconWidget(name: 'at_mail', color: t.white),
                            SizedBox(width: r.padding(16)),
                            SelectableTextComponent(
                              "info@beyegroup.com",
                              style: TextStyle(
                                fontSize: r.fontSize(16),
                                color: t.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: r.padding(24)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgIconWidget(name: 'phone', color: t.white),
                            SizedBox(width: r.padding(16)),
                            SelectableTextComponent(
                              "00962 6 5337669",
                              style: TextStyle(
                                fontSize: r.fontSize(16),
                                color: t.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: r.padding(24)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SelectableTextComponent(
                          'Links',
                          style: TextStyle(
                            fontSize: r.fontSize(24),
                            color: t.white,
                          ),
                        ),
                        SizedBox(height: r.padding(32)),
                        TextButton(
                          onPressed: () {
                            p.scrollToTop();
                          },
                          child: TextComponent(
                            "Home Page",
                            style: TextStyle(
                              fontSize: r.fontSize(16),
                              color: t.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: TextComponent(
                            "Our Services",
                            style: TextStyle(
                              fontSize: r.fontSize(16),
                              color: t.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: TextComponent(
                            "The Dashboards",
                            style: TextStyle(
                              fontSize: r.fontSize(16),
                              color: t.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            p.scrollToSection(
                                p.navigatorKeys[6].currentContext!);
                          },
                          child: TextComponent(
                            "About Us",
                            style: TextStyle(
                              fontSize: r.fontSize(16),
                              color: t.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            p.scrollToSection(
                                p.navigatorKeys[7].currentContext!);
                          },
                          child: TextComponent(
                            "Contact Us",
                            style: TextStyle(
                              fontSize: r.fontSize(16),
                              color: t.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SelectableTextComponent(
                          'Start Your Demo',
                          style: TextStyle(
                            fontSize: r.fontSize(24),
                            color: t.white,
                          ),
                        ),
                        SizedBox(height: r.padding(32)),
                        SizedBox(
                          width: r.padding(300),
                          child: TextField(
                            style: TextStyle(color: t.white),
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: false,
                              hintText: 'Email Address',
                              hintStyle: TextStyle(
                                fontSize: r.fontSize(FontSize.s16),
                                color: t.white,
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: t.white),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: t.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: t.white, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: r.margin(140)),
              width: mq(context).width,
              height: 1,
              color: t.white,
            ),
            SizedBox(
              height: r.padding(100),
              child: Center(
                child: SelectableTextComponent(
                  '2024 beyegroup',
                  style: TextStyle(
                    fontSize: r.fontSize(FontSize.s16),
                    color: t.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
