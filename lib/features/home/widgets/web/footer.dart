// ignore_for_file: constant_identifier_names

// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

const String _FIRST_PART = "first_part";
const String _SECOND_PART = "second_part";
const String _THIRD_PART = "third_part";
const String _FOURTH_PART = "fourth_part";

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return Container(
          height: r.height(460),
          width: mq(context).width,
          color: Colors.black,
          padding: EdgeInsets.only(top: r.padding(56)),
          child: Column(
            children: [
              const Expanded(
                child: Row(
                  children: [
                    _FirstPart(key: Key(_FIRST_PART)),
                    _SecondPart(key: Key(_SECOND_PART)),
                    _ThirdPart(key: Key(_THIRD_PART)),
                    _FourthPart(key: Key(_FOURTH_PART)),
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
      },
    );
  }
}

class _FirstPart extends StatelessWidget {
  const _FirstPart({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Expanded(
      key: const Key(_FIRST_PART),
      child: Column(
        children: [
          SizedBox(
            width: r.padding(AppSize.ws219),
            child: SvgIconWidget(
              name: AppStrings.mainLogo,
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
                _socialMediaIcon(context, onTap: () {}, icon: 'facebook'),
                _socialMediaIcon(context, onTap: () {}, icon: 'x'),
                _socialMediaIcon(context, onTap: () {}, icon: 'snapchat'),
                _socialMediaIcon(context, onTap: () {}, icon: 'instagram'),
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
    );
  }

  Widget _socialMediaIcon(BuildContext context,
      {required VoidCallback onTap, required String icon}) {
    final r = Provider.of<ResponsiveManager>(context);

    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: r.padding(24),
        child: SvgIconWidget(
          name: icon,
        ),
      ),
    );
  }
}

class _SecondPart extends StatelessWidget {
  const _SecondPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      key: const Key(_SECOND_PART),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _footerMainTitle(context, AppStrings.contacts),
          _widget(context, 'location2', AppStrings.address),
          _widget(context, 'at_mail', AppStrings.appEmail),
          _widget(context, 'phone', AppStrings.phoneNumber),
        ],
      ),
    );
  }

  Widget _widget(BuildContext context, String icon, String title) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgIconWidget(name: icon, color: t.white),
            SizedBox(width: r.padding(16)),
            SizedBox(
              width: r.padding(280),
              child: SelectableTextComponent(
                title,
                style: TextStyle(
                  fontSize: r.fontSize(16),
                  color: t.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: r.padding(24)),
      ],
    );
  }
}

class _ThirdPart extends StatelessWidget {
  const _ThirdPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return Expanded(
          key: const Key(_THIRD_PART),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _footerMainTitle(context, AppStrings.links),
              _textButton(context, () => p.scrollToTop(), "Home Page"),
              _textButton(context, () {}, "Our Services"),
              _textButton(context, () {}, "The Dashboards"),
              _textButton(
                  context,
                  () => p.scrollToSection(p.navigatorKeys[6].currentContext!),
                  "About Us"),
              _textButton(
                  context,
                  () => p.scrollToSection(p.navigatorKeys[7].currentContext!),
                  "Contact Us"),
            ],
          ),
        );
      },
    );
  }

  Widget _textButton(
      BuildContext context, VoidCallback onPressed, String title) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return TextButton(
      onPressed: onPressed,
      child: TextComponent(
        title,
        style: TextStyle(
          fontSize: r.fontSize(16),
          color: t.white,
        ),
      ),
    );
  }
}

class _FourthPart extends StatelessWidget {
  const _FourthPart({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Expanded(
      key: const Key(_FOURTH_PART),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _footerMainTitle(context, AppStrings.startYourDemo),
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
                  borderSide: BorderSide(color: t.white, width: 2.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _footerMainTitle(BuildContext context, String title) {
  final r = Provider.of<ResponsiveManager>(context);
  final t = Provider.of<ThemeManager>(context);
  return Column(
    children: [
      SelectableTextComponent(
        title,
        style: TextStyle(
          fontSize: r.fontSize(24),
          color: t.white,
        ),
      ),
      SizedBox(height: r.padding(32)),
    ],
  );
}
