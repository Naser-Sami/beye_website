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
      height: r.padding(624),
      width: mq(context).width,
      margin: EdgeInsets.symmetric(
        vertical: r.margin(120),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: r.padding(140),
      ),
      color: Colors.green.shade50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          //mockup_6
          SizedBox(
            width: mq(context).width,
            height: r.padding(600),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  width: mq(context).width,
                  height: mq(context).height,
                  color: Colors.red.shade100,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: r.padding(490),
                        height: r.padding(460),
                        child: const SvgIconWidget(
                          name: 'circle',
                        ),
                      ),
                      circleWithText(
                        context,
                        top: r.padding(30),
                        right: r.padding(170),
                        title: "Revenue Growth",
                        description:
                            "On average, our clients have experienced a 20% increase in revenue within the first year of implementing our analytics solutions. By identifying untapped opportunities and optimizing their offerings, they've achieved remarkable financial growth.",
                        color: t.primary(),
                      ),
                      circleWithText(
                        context,
                        top: r.padding(250),
                        right: r.padding(90),
                        title: "Risk Mitigation",
                        description:
                            "Analytics plays a crucial role in risk management. Our clients have seen a 30% reduction in non-performing loans thanks to our predictive risk models, resulting in stronger fi",
                        color: t.primaryLight(),
                      ),
                      circleWithText(
                        context,
                        bottom: r.padding(0),
                        right: r.padding(170),
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
            width: r.padding(100),
            height: r.padding(100),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
          SizedBox(
            width: r.padding(AppSize.ws64),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComponent(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: r.fontSize(FontSize.s24),
                ),
              ),
              SizedBox(
                height: r.padding(AppSize.hs08),
              ),
              SizedBox(
                width: r.padding(360),
                child: TextComponent(
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
