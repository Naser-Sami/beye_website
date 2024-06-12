// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/utils/utils.dart';

class IconWithNumNotification extends StatelessWidget {
  final String iconName;
  final int notificationNum;
  final void Function()? onPressed;

  const IconWithNumNotification({
    super.key,
    required this.iconName,
    required this.notificationNum,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Provider.of<ResponsiveManager>(context);

    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: responsive.width(AppSize.ws40),
        child: Stack(
          children: [
            SvgIconWidget(
              name: iconName,
              width: responsive.width(AppSize.ws20),
              height: responsive.height(AppSize.ws20),
              color: Provider.of<ThemeManager>(context).onSurface(),
            ),
            if (notificationNum > 0)
              PositionedDirectional(
                end: responsive.width(AppSize.ws05),
                top: responsive.height(AppSize.hs06),
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor:
                      Provider.of<ThemeManager>(context).error(),
                  child: Center(
                    child: Text(
                      "$notificationNum",
                      style: getBodySmall(
                        fontSize: responsive.fontSize(FontSize.s10),
                        color: Provider.of<ThemeManager>(context)
                            .white,
                        fontWeight: FontWeightManager.regular,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
