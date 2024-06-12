// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/core/utils/utils.dart';
import '/config/config.dart';

class ElevatedButtonComponent extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final TextStyle? style;
  final BorderRadiusGeometry? borderRadius;
  final String? iconName;
  final Color? color;
  final Color? borderColor;
  final bool? isWithBorder;

  const ElevatedButtonComponent({
    required this.onPressed,
    required this.title,
    this.width,
    this.height,
    this.padding,
    this.style,
    this.borderRadius,
    this.iconName,
    this.color,
    this.borderColor,
    super.key,
    this.isWithBorder,
  });

  @override
  Widget build(BuildContext context) {
    final themeC = Provider.of<ThemeManager>(context);
    final responsive = Provider.of<ResponsiveManager>(context);

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: isWithBorder == true
              ? BorderSide(color: borderColor ?? themeC.borderColor())
              : BorderSide.none,
          backgroundColor: color ?? themeC.primary(),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(AppRadius.r16),
          ),
          fixedSize: Size(
            width ?? responsive.width(AppSize.ws346),
            height ?? responsive.height(AppSize.hs88),
          ),
        ),
        onPressed: onPressed,
        child: iconName != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgIconWidget(
                    name: iconName!,
                    width: responsive.width(AppSize.ws18),
                    height: responsive.width(AppSize.ws18),
                    color: themeC.white,
                  ),
                  Text(
                    title,
                    style: style,
                  ),
                ],
              )
            : Text(
                title,
                style: style ??
                    getTitleSmall().copyWith(
                        color: themeC.white,
                        fontSize: responsive.fontSize(FontSize.s24)),
              ),
      ),
    );
  }
}
