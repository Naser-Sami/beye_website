// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class HaveUniqueNeeds extends StatelessWidget {
  const HaveUniqueNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return BaseContainerComponent(
          key: p.navigatorKeys[7],
          height: r.response(337),
          width: mq(context).width,
          margin: EdgeInsets.only(
            bottom: r.response(120),
            right: r.response(140),
            left: r.response(140),
          ),
          isWithBorder: false,
          image: const DecorationImage(
            image: AssetImage('assets/images/back-ground-5.png'),
            fit: BoxFit.fitWidth,
          ),
          child: Container(
            height: r.response(337),
            width: mq(context).width,
            padding: EdgeInsets.all(r.response(64)),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.25),
                borderRadius: BorderRadius.circular(AppRadius.r16)),
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
                      SelectableTextComponent(
                        'Have Unique Needs?',
                        style: TextStyle(
                          color: t.white,
                          fontSize: r.fontSize(FontSize.s80),
                          fontWeight: FontWeight.bold,
                          fontFamily: Constants.primaryFont,
                        ),
                      ),
                      SelectableTextComponent(
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
                  width: r.response(300),
                ),
                ButtonWithHoverEffectComponent(
                  isHover: p.isContactUsHover,
                  text: 'Contact Us Now',
                  onEnter: (event) => p.onContactUsHover(true),
                  onExit: (event) => p.onContactUsHover(false),
                  trailing: SvgIconWidget(
                    name: 'arrow',
                    width: r.response(24),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
