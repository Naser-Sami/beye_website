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
                      TextComponent(
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
                      TextComponent(
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
                            child: TextComponent(
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
                          TextComponent(
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
                          TextComponent(
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
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [],
                  ),
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [],
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
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
