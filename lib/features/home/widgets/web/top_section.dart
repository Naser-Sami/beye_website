// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/core/core.dart';
import '/config/config.dart';

class HomeViewTopSection extends StatefulWidget {
  const HomeViewTopSection({super.key});

  @override
  State<HomeViewTopSection> createState() => _HomeViewTopSectionState();
}

class _HomeViewTopSectionState extends State<HomeViewTopSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: Constants.animationDelay2000),
    );

    animatedFromDownToTop();
    animatedFromTopToDown();

    _toggleAnimation();
  }

  void animatedFromDownToTop() {
    _animation1 = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  void animatedFromTopToDown() {
    _animation2 = Tween<Offset>(
      begin: const Offset(0, -1),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  void _toggleAnimation() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Consumer<HomeManager>(
      builder: (context, p, _) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SlideTransition(
              position: _animation1,
              child: Container(
                alignment: Alignment.bottomCenter,
                height: r.response(AppSize.fullHeight),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage(
                      'assets/images/mockup_1.png',
                    ),
                  ),
                ),
              ),
            ),
            SlideTransition(
              position: _animation2,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: r.response(AppSize.hs136)),
                    SizedBox(
                      height: r.width(AppSize.ws220),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: r.response(AppSize.hs05),
                            child: SelectableTextComponent(
                              'Banking Data Analytics',
                              style: TextStyle(
                                color: t.white,
                                fontSize: r.fontSize(FontSize.s98),
                                fontWeight: FontWeight.bold,
                                fontFamily: Constants.primaryFont,
                              ),
                            ),
                          ),
                          Positioned(
                            top: r.response(AppSize.hs65),
                            child: SelectableTextComponent(
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
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mq(context).width * 0.25),
                      child: SelectableTextComponent(
                        'Transforming Banking Through Insightful Data: Unlock the Power of Our Analytics Solutions with Intuitive Dashboards on Every Device.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: t.white,
                          fontSize: r.fontSize(FontSize.s24),
                          fontFamily: Constants.primaryFont,
                        ),
                      ),
                    ),
                    SizedBox(height: r.response(24)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mq(context).width * 0.25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BaseContainerComponent(
                            onTap: () {},
                            cursor: SystemMouseCursors.click,
                            height: r.response(AppSize.hs64),
                            width: r.width(AppSize.ws130),
                            color: t.fall(),
                            isWithBorder: false,
                            child: Center(
                              child: TextComponent(
                                'Demo',
                                style: TextStyle(
                                    color: t.white,
                                    fontSize: r.fontSize(FontSize.s20)),
                              ),
                            ),
                          ),
                          SizedBox(width: r.response(16)),
                          ButtonWithHoverEffectComponent(
                            onEnter: (event) => p.onHover(true),
                            onExit: (event) => p.onHover(false),
                            isHover: p.isHover,
                            text: 'How it works',
                            leading: Icon(
                              Icons.play_arrow,
                              color: t.white,
                              size: r.response(28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
