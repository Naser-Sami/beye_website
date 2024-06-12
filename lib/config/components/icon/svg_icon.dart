// Packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Files
import '/core/core.dart';

class SvgIconWidget extends StatelessWidget {
  const SvgIconWidget({
    super.key,
    required this.name,
    this.width,
    this.height,
    this.color,
    this.fit = BoxFit.contain,
    this.onPressed,
  });

  final String name;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit fit;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Func.getIconSVG(name),
      width: width,
      height: height,
      colorFilter:
          color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
      fit: fit,
    );
  }
}
