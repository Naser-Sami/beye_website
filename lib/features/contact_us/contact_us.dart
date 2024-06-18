import 'package:beye_website/core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/config/config.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool show = true;
  List<Map<String, String>> data = [
    {
      'icon': 'location2',
      'title': AppStrings.location,
      'subtitle': AppStrings.address
    },
    {
      'icon': 'at_mail',
      'title': AppStrings.email,
      'subtitle': AppStrings.appEmail
    },
    {
      'icon': 'phone',
      'title': AppStrings.phone,
      'subtitle': "${AppStrings.phoneNumber}\n${AppStrings.phoneNumber2}"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (sn) {
          if (controller.position.pixels < r.response(370)) {
            setState(() {
              show = true;
            });
          } else {
            setState(() {
              show = false;
            });
          }

          return true;
        },
        child: CustomScrollView(
          controller: controller,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar.large(
              snap: true,
              pinned: true,
              stretch: true,
              floating: true,
              centerTitle: true,
              // forceMaterialTransparency: true,
              automaticallyImplyLeading: false,
              // backgroundColor:  t.primary(),
              collapsedHeight: r.response(100),
              expandedHeight: r.response(AppSize.fullHeight * 0.50),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: SizedBox(
                  height: r.response(AppSize.fullHeight * 0.20),
                  child: Column(
                    children: [
                      TextComponent(
                        AppStrings.contactUs,
                        style: TextStyle(
                            color: show ? t.white : t.text(),
                            fontSize: show ? r.fontSize(100) : r.fontSize(50),
                            fontWeight: FontWeight.bold,
                            decoration: show ? TextDecoration.underline : null,
                            decorationColor: t.white,
                            decorationThickness: 5),
                      ),
                      if (show) SizedBox(height: r.response(24)),
                      if (show)
                        SizedBox(
                          width: r.response(700),
                          child: TextComponent(
                            'Ready to Transform Your Banking Experience? Reach out to Us – Your Analytics Journey Starts Here',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: t.white,
                              fontSize: r.fontSize(24),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      if (!show)
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: r.response(100)),
                          child: Divider(
                            color: t.onSurface(),
                            thickness: r.response(2),
                          ),
                        ),
                    ],
                  ),
                ),
                background: Image.asset(
                  'assets/images/back-ground-1.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: r.response(120),
                      horizontal: r.response(140),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextComponent(
                                AppStrings.letsTalk,
                                style: TextStyle(
                                  color: t.primary(),
                                  fontSize: r.fontSize(80),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: r.response(24)),
                              TextComponent(
                                "Feel free to reach out to us for any inquiries, collaborations, or assistance. Our dedicated team is here to support you. Connect with us through the following channels",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: t.text(),
                                  fontSize: r.fontSize(24),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: r.response(48)),
                              for (int index = 0; index < 3; index++) ...[
                                SizedBox(
                                  width: r.response(318),
                                  child: ListTile(
                                    titleAlignment:
                                        ListTileTitleAlignment.titleHeight,
                                    leading: SvgIconWidget(
                                      name: data[index]['icon'].toString(),
                                      color: t.orange,
                                      width: r.response(24),
                                    ),
                                    title: TextComponent(
                                      data[index]['title'].toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: r.fontSize(24),
                                      ),
                                    ),
                                    subtitle: SelectableTextComponent(
                                      data[index]['subtitle'].toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: r.fontSize(16),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              SizedBox(
                                height: r.response(32),
                              ),
                              BaseContainerComponent(
                                height: r.response(252),
                                color: t.primarySoftLight(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
