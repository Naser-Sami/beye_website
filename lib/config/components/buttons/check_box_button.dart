// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/core/core.dart';
import '/config/config.dart';

class CheckBoxComponent extends StatelessWidget {
  final bool isTrue;
  final bool ifWithoutMaterialButton;

  const CheckBoxComponent({
    super.key,
    required this.isTrue,
    this.ifWithoutMaterialButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Provider.of<ResponsiveManager>(context);

    return isTrue
        ? SvgIconWidget(
            name: 'check_box_true',
            height: responsive.width(AppSize.ws24),
            width: responsive.width(AppSize.ws24),
          )
        : SvgIconWidget(
            name: 'check_box_false',
            height: responsive.width(AppSize.ws24),
            width: responsive.width(AppSize.ws24),
          );
  }
}

class CheckBoxListTileComponent extends StatelessWidget {
  final bool value;
  final void Function(Object?)? onChanged;
  final String title;
  final String? subtitle;
  final Widget? secondary;
  final TextStyle? style;
  final bool smallHeight;

  const CheckBoxListTileComponent(
      {super.key,
      required this.value,
      this.onChanged,
      required this.title,
      this.subtitle,
      this.secondary,
      this.style,
      this.smallHeight = false});

  @override
  Widget build(BuildContext context) {
    final themeC = Provider.of<ThemeManager>(context);
    final responsive = Provider.of<ResponsiveManager>(context);

    return SizedBox(
      height: smallHeight ? responsive.height(AppSize.hs34) : null,
      child: CheckboxListTile(
        value: value,
        onChanged: onChanged,
        title: Text(
          title,
          style: style ??
              getBodyMedium(
                color: themeC.text(),
                fontWeight: FontWeightManager.semiBold,
              ),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: getBodySmall(),
              )
            : null,
        secondary: secondary,
        dense: true,
        controlAffinity: ListTileControlAffinity.trailing,
        contentPadding: EdgeInsetsDirectional.zero,
        splashRadius: 10,
      ),
    );
  }
}
