// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class TheDashboards extends StatelessWidget {
  const TheDashboards({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: r.response(140)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SelectableTextComponent(
                'The',
                style: TextStyle(
                  fontSize: r.fontSize(FontSize.s40),
                  color: t.text(),
                ),
              ),
              SelectableTextComponent(
                'Dashboards',
                style: TextStyle(
                  fontSize: r.fontSize(FontSize.s80),
                  color: t.primaryDark(),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: r.response(AppSize.hs40),
              ),

              // back-ground-4
              BaseContainerComponent(
                width: mq(context).width,
                height: r.response(615),
                image: const DecorationImage(
                  image: AssetImage('assets/images/back-ground-4.png'),
                  fit: BoxFit.cover,
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: r.response(40), vertical: r.response(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: r.response(360),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableTextComponent(
                            'Finance Banking Analytics',
                            style: TextStyle(
                              fontSize: r.fontSize(FontSize.s32),
                              color: t.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: r.response(16),
                          ),
                          SelectableTextComponent(
                            'Leverage eal-time monitoring, graphical insights, and simplified financial data for percise strategy execution.',
                            style: TextStyle(
                              fontSize: r.fontSize(FontSize.s16),
                              color: t.white,
                            ),
                          ),
                          SizedBox(
                            height: r.response(8),
                          ),
                          SelectableTextComponent(
                            'Maintain optimal balance betwen Assets and Liabilities, enhancing shareholder value. Take immediate corrective actions seamlessly with our management functions.',
                            style: TextStyle(
                              fontSize: r.fontSize(FontSize.s16),
                              color: t.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: PngImageWidget(
                        name: 'mockup_7',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: r.response(32),
              ),
              // back-ground-7 + back-ground-3
              Row(
                children: [
                  Expanded(
                    flex: 60,
                    child: SizedBox(
                      height: r.response(813),
                      child: Stack(
                        children: [
                          BaseContainerComponent(
                            height: r.response(781),
                            padding: EdgeInsets.all(
                              r.response(40),
                            ),
                            image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/back-ground-7.png'),
                              fit: BoxFit.cover,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SelectableTextComponent(
                                  'Finance Empower',
                                  style: TextStyle(
                                    fontSize: r.fontSize(FontSize.s32),
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: r.response(16),
                                ),
                                SelectableTextComponent(
                                  'Empower CFOs beyond reporting. Drive startegy with real-time insights. Optimize balance, enhance shareholder value, and act swiftly with seamless management functions.',
                                  style: TextStyle(
                                    fontSize: r.fontSize(FontSize.s16),
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: r.margin(140), left: r.margin(140)),
                            child: const Expanded(
                              child: PngImageWidget(
                                name: 'mockup_2',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: r.response(32),
                  ),
                  Expanded(
                    flex: 40,
                    child: SizedBox(
                      height: r.response(813),
                      child: Stack(
                        children: [
                          BaseContainerComponent(
                            padding: EdgeInsets.only(
                              top: r.response(40),
                            ),
                            height: r.response(781),
                            image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/back-ground-3.png'),
                              fit: BoxFit.cover,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: r.response(40),
                                  ),
                                  width: mq(context).width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SelectableTextComponent(
                                        'Retail Banking Analytics',
                                        style: TextStyle(
                                          fontSize: r.fontSize(FontSize.s32),
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: r.response(16),
                                      ),
                                      _textWidget(r,
                                          'Unlock retail success with our toolkit:'),
                                      _textWidget(
                                        r,
                                        ' • Customer Analytics: Gain a competitive edge understanding customer profiles.',
                                      ),
                                      _textWidget(r,
                                          ' • Leading Management: Analyze portfolios, sales, and bookings.'),
                                      _textWidget(
                                        r,
                                        ' • Liability Optimization: Boost revenues with deposit pricing.',
                                      ),
                                      _textWidget(
                                        r,
                                        ' • Card Analytics: Real-time monitoring for strategic planning.',
                                      ),
                                      _textWidget(
                                        r,
                                        ' • Transactions Analisis: Enhance customer experience and analyze transactions.',
                                      ),
                                      _textWidget(
                                        r,
                                        ' • Branch 360: Overview and comparison tool for branch networks.',
                                      ),
                                      _textWidget(
                                        r,
                                        ' • ATMs & E-Channels: Mine valuable data for strategic insights.',
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: r.response(-33),
                                  child: SizedBox(
                                    height: r.response(AppSize.hs300),
                                    child: const PngImageWidget(
                                      name: 'mockup_4',
                                      fit: BoxFit.fill,
                                    ),
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
              ),
            ],
          ),
        ),

        // back-ground-2 + back-ground-5
        Padding(
          padding: EdgeInsets.only(left: r.response(140)),
          child: Row(
            children: [
              Expanded(
                child: BaseContainerComponent(
                  height: r.response(502),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/back-ground-2.png'),
                    fit: BoxFit.cover,
                  ),
                  padding: EdgeInsets.all(r.response(56)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SelectableTextComponent(
                        'Risk Banking Analytics',
                        style: TextStyle(
                          fontSize: r.fontSize(FontSize.s32),
                          color: t.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: r.response(16),
                      ),
                      SelectableTextComponent(
                        "Banking's inherent risk demands proactive CROs.\n\nLeverage big data and analytics to align with Basel standards and internal policies. Our comprehensive solution includes hundreds of KPIs for risk assessment and revenue growth. Analyze borrower data, default trends, and collateral values for informed decision-making.",
                        style: TextStyle(
                          fontSize: r.fontSize(FontSize.s16),
                          color: t.white,
                        ),
                      ),
                      const Spacer(),
                      const SvgIconWidget(name: 'risk_banking_analytics')
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: r.response(32),
              ),
              Expanded(
                child: Stack(
                  children: [
                    BaseContainerComponent(
                      color: Colors.amber,
                      width: mq(context).width,
                      height: r.response(502),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/back-ground-5.png'),
                        fit: BoxFit.cover,
                      ),
                      padding: EdgeInsets.all(r.response(56))
                          .copyWith(right: 0, bottom: 0),
                      margin: EdgeInsets.only(right: r.margin(140)),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: r.response(400),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SelectableTextComponent(
                                  'Corporate Banking Analytics',
                                  style: TextStyle(
                                    fontSize: r.fontSize(FontSize.s32),
                                    color: t.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: r.response(16),
                                ),
                                Flexible(
                                  child: SelectableTextComponent(
                                    "Efficiently manage corporate credit portfolios with our solution:\n\nTrack Growth and Yields\nAnalyze Non-Funded Income\nMonitor Deposit Movements and Sectors\nOptimize RM Sales Activities\nAnalyze Funded and Unfunded Portfolios\nAssess Limits, Utilization, and NPLs\nEmpower corporate banking for optimized business management.",
                                    style: TextStyle(
                                      fontSize: r.fontSize(FontSize.s16),
                                      color: t.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: r.response(20),
                      right: r.response(40),
                      child: SizedBox(
                        height: r.response(387),
                        width: r.response(491),
                        child: const PngImageWidget(
                          name: 'mockup_3',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: r.response(120),
        ),
      ],
    );
  }

  SizedBox _textWidget(ResponsiveManager r, String text) {
    return SizedBox(
      width: r.response(500),
      child: SelectableTextComponent(
        text,
        style: TextStyle(
          height: 2.0,
          fontSize: r.fontSize(FontSize.s16),
          color: Colors.black,
        ),
      ),
    );
  }
}
