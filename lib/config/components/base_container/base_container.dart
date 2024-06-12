// Package
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/core.dart';

class BaseContainerComponent extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final bool isWithShadow;
  final bool isWithBorder;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final Color? color;
  final AlignmentGeometry? alignment;
  final Color? borderColor;
  final BoxConstraints? constraints;
  final DecorationImage? image;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final MouseCursor cursor;

  const BaseContainerComponent(
      {super.key,
      this.child,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.borderRadius,
      this.onTap,
      this.onLongPress,
      this.isWithShadow = false,
      this.isWithBorder = true,
      this.color,
      this.alignment,
      this.borderColor,
      this.constraints,
      this.image,
      this.boxShadow,
      this.gradient,
      this.cursor = MouseCursor.defer});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeManager>(builder: (context, t, _) {
      return MouseRegion(
        cursor: cursor,
        child: GestureDetector(
          onTap: onTap,
          onLongPress: onLongPress,
          child: Container(
            width: width,
            height: constraints != null ? null : height ?? AppSize.hs48,
            margin: margin,
            constraints: constraints,
            padding: paddingGeometry(),
            alignment: alignment,
            decoration: BoxDecoration(
                boxShadow: boxShadow ?? boxShadows(context, t),
                color: (color == null && isWithShadow) ? t.surface() : color,
                image: image,
                gradient: gradient,
                border: border(context, t),
                borderRadius: borderRadiusGeometry()),
            child: child,
          ),
        ),
      );
    });
  }

  List<BoxShadow>? boxShadows(BuildContext context, ThemeManager t) {
    if (isWithShadow) {
      return [
        BoxShadow(
          color: t.shadowColor(),
          offset: const Offset(0, 0),
          blurRadius: AppRadius.r05,
        ),
      ];
    } else {
      return null;
    }
  }

  BorderRadiusGeometry? borderRadiusGeometry() {
    if (borderRadius != null) {
      return borderRadius;
    } else {
      return BorderRadius.circular(AppRadius.r16);
    }
  }

  BoxBorder? border(BuildContext context, ThemeManager t) {
    // if (isWithShadow) {
    //   return null;
    // }
    if (isWithBorder) {
      return Border.all(color: borderColor ?? t.borderColor());
    }

    return null;
  }

  EdgeInsetsGeometry? paddingGeometry() {
    if (padding != null) {
      return padding;
    } else {
      return EdgeInsets.zero;
      // return EdgeInsets.fromLTRB(
      //     AppPadding.p12, AppPadding.p14, AppPadding.p12, AppPadding.p14);
    }
  }
}
