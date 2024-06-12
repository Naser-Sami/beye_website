// Packages
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/core/core.dart';
import '../../config.dart';

class ButtonWithHoverEffectComponent extends StatelessWidget {
  final void Function(PointerEnterEvent)? onEnter;
  final void Function(PointerExitEvent)? onExit;
  final void Function(PointerHoverEvent)? onHover;
  final bool isHover;
  final String text;

  const ButtonWithHoverEffectComponent(
      {super.key,
      this.onEnter,
      this.onExit,
      this.onHover,
      required this.isHover,
      required this.text});

  @override
  Widget build(BuildContext context) {
    final r = Provider.of<ResponsiveManager>(context);
    final t = Provider.of<ThemeManager>(context);
    return MouseRegion(
      onEnter: onEnter,
      onExit: onExit,
      onHover: onHover,
      cursor: SystemMouseCursors.click,
      child: SizedBox(
        height: r.padding(AppSize.hs64),
        width: r.width(AppSize.ws230),
        child: Stack(
          children: [
            Container(
              height: r.padding(AppSize.hs64),
              width: r.width(AppSize.ws230),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(r.padding(AppRadius.r16)),
                border: Border.all(color: t.secondary(), width: 0.50),
              ),
            ),
            AnimatedOpacity(
              opacity: isHover ? 1 : 0,
              duration:
                  const Duration(milliseconds: Constants.animationDelay400),
              child: AnimatedContainer(
                width: isHover ? r.width(AppSize.ws230) : 0,
                height: r.padding(AppSize.hs64),
                duration:
                    const Duration(milliseconds: Constants.animationDelay400),
                decoration: BoxDecoration(
                  color: t.fall(),
                  borderRadius: BorderRadius.circular(r.padding(AppRadius.r16)),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_right,
                    size: r.padding(AppSize.ws30),
                    color: t.white,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: t.white,
                      fontSize: r.fontSize(FontSize.s20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
