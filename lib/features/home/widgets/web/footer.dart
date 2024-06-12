// Packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                              child: SvgIconWidget(
                                name: 'facebook',
                              ),
                            ),
                            SizedBox(
                              width: r.padding(24),
                              child: SvgIconWidget(
                                name: 'x',
                              ),
                            ),
                            SizedBox(
                              width: r.padding(24),
                              child: SvgIconWidget(
                                name: 'snapchat',
                              ),
                            ),
                            SizedBox(
                              width: r.padding(24),
                              child: SvgIconWidget(
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
                        children: [
                          SvgIconWidget(name: 'location2', color: t.white),
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
                        children: [
                          SvgIconWidget(name: 'at_mail', color: t.white),
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
                        children: [
                          SvgIconWidget(name: 'phone', color: t.white),
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [],
                  ),
                ),
                Expanded(
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
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
