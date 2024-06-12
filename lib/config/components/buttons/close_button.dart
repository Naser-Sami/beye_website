import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/core/core.dart';
import '/config/config.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({super.key, this.onClose});
final Function()? onClose;
  @override
  Widget build(BuildContext context) {
    final themeC = Provider.of<ThemeManager>(context);
    final responsive = Provider.of<ResponsiveManager>(context);
    return PositionedDirectional(
        top: responsive.height(AppSize.hs24),
        end: responsive.width(AppSize.ws24),
        child:SvgIconWidget(
          name: 'close',
          width: responsive.width(AppSize.ws24),
          height: responsive.height(AppSize.hs24),
          color: themeC.textGrey(),
          onPressed:onClose?? (){
             Navigator.pop(context);
          },
        ),
    );
  }
}
