// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class HaveUniqeNeeds extends StatelessWidget {
  const HaveUniqeNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return BaseContainerComponent(
          key: p.navigatorKeys[7],
          height: r.padding(337),
          width: mq(context).width,
          margin: EdgeInsets.only(
            bottom: r.padding(120),
            right: r.padding(140),
            left: r.padding(140),
          ),
          padding: EdgeInsets.all(r.padding(64)),
          image: const DecorationImage(
            image: AssetImage('assets/images/back-ground-5.png'),
            fit: BoxFit.fitWidth,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextComponent(
                      'Have Unique Needs?',
                      style: TextStyle(
                        color: t.white,
                        fontSize: r.fontSize(FontSize.s80),
                        fontWeight: FontWeight.bold,
                        fontFamily: Constants.primaryFont,
                      ),
                    ),
                    TextComponent(
                      "Contact our experts to discuss custom solutions tailored to your banking analytics requirements. Let's create success together",
                      style: TextStyle(
                        color: t.white,
                        fontSize: r.fontSize(FontSize.s22),
                        fontWeight: FontWeight.normal,
                        fontFamily: Constants.primaryFont,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: r.padding(300),
              ),
              ButtonWithHoverEffectComponent(
                isHover: p.isContacUsHoverd,
                text: 'Contact Us Now',
                onEnter: (event) => p.onContactUsHover(true),
                onExit: (event) => p.onContactUsHover(false),
              ),
            ],
          ),
        );
      },
    );
  }
}
