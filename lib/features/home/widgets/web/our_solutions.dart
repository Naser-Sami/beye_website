// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class OurSolutions extends StatelessWidget {
  const OurSolutions({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Container(
      height: r.response(624),
      width: mq(context).width,
      margin: EdgeInsets.symmetric(
        vertical: r.margin(120),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: r.response(140),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: mq(context).width,
            height: r.response(600),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                SizedBox(
                  width: mq(context).width,
                  height: mq(context).height,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        right: r.response(615),
                        child: SizedBox(
                          width: r.response(490),
                          height: r.response(460),
                          child: const SvgIconWidget(
                            name: 'circle',
                          ),
                        ),
                      ),
                      circleWithText(
                        context,
                        top: r.response(25),
                        right: r.response(170),
                        title: "Revenue Growth",
                        description:
                            "On average, our clients have experienced a 20% increase in revenue within the first year of implementing our analytics solutions. By identifying untapped opportunities and optimizing their offerings, they've achieved remarkable financial growth.",
                        color: t.primary(),
                      ),
                      circleWithText(
                        context,
                        top: r.response(250),
                        right: r.response(95),
                        title: "Risk Mitigation",
                        description:
                            "Analytics plays a crucial role in risk management. Our clients have seen a 30% reduction in non-performing loans thanks to our predictive risk models, resulting in stronger fi",
                        color: t.primaryLight(),
                      ),
                      circleWithText(
                        context,
                        bottom: r.response(10),
                        right: r.response(170),
                        crossAxisAlignment: CrossAxisAlignment.center,
                        title: "Customer Satisfaction",
                        description:
                            "Customer-centricity is at the heart of our solutions. Through personalized insights and improved service delivery, our clients have achieved a 15% boost in customer satisfaction scores, leading to increased loyalty and retention.",
                        color: t.primarySoftLight(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableTextComponent(
                'Our',
                style: TextStyle(
                  fontSize: r.fontSize(FontSize.s130),
                  color: t.primary(),
                  fontWeight: FontWeight.normal,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: r.response(154),
                    child: const PngImageWidget(
                      fit: BoxFit.fill,
                      name: 'mockup_6',
                    ),
                  ),
                  SelectableTextComponent(
                    'Solutions',
                    style: TextStyle(
                      fontSize: r.fontSize(FontSize.s130),
                      color: t.primary(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: r.response(775),
                child: SelectableTextComponent(
                  "At BEYE Group, we understand the transformative potential of analytics in the banking industry. Our solutions have consistently delivered tangible benefits to financial institutions, enabling them to thrive in today's competitive landscape. Here are some real statistics that highlight the impact of analytics on our clients' success:",
                  style: TextStyle(
                    fontSize: r.fontSize(FontSize.s24),
                    color: t.textGrey(),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget circleWithText(BuildContext context,
      {double? left,
      double? top,
      double? right,
      double? bottom,
      required String title,
      required String description,
      required Color color,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start}) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);

    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Container(
            width: r.response(100),
            height: r.response(100),
            padding: EdgeInsets.all(r.response(15)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Container(
              width: r.response(80),
              height: r.response(80),
              padding: EdgeInsets.all(r.response(10)),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFDFDFDF),
                    Color(0xFFE1E1E1),
                    Color(0xFFF2F2F2),
                    Color(0xFFFBFBFB),
                    Color(0xFFFFFFFF),
                  ],
                ),
              ),
              child: SvgIconWidget(
                name: 'location',
                color: color,
              ),
            ),
          ),
          SizedBox(
            width: r.response(AppSize.ws64),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableTextComponent(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: r.fontSize(FontSize.s24),
                ),
              ),
              SizedBox(
                height: r.response(AppSize.hs08),
              ),
              SizedBox(
                width: r.response(360),
                child: SelectableTextComponent(
                  description,
                  style: TextStyle(
                    color: t.textGrey(),
                    fontSize: r.fontSize(FontSize.s14),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
