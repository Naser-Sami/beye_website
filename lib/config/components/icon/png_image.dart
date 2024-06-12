
// Packages
import 'package:flutter/material.dart';

// Files
import '/core/core.dart';

class PngImageWidget extends StatelessWidget {
  const PngImageWidget({
    Key? key,
    required this.name,
    this.width,
    this.height,
    this.color,
    this.fit = BoxFit.contain,
    this.onPressed,
  }) : super(key: key);

  final String name;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit fit;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(
        Func.getPngImage(name),
        width: width,
        height: height,
        fit: fit,
      ),
    );
  }
}
