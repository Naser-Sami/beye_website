// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';
import '/core/utils/utils.dart';

class CanceledButtonComponent extends StatelessWidget {
  final void Function()? onPressed;
  final String? title;

  const CanceledButtonComponent({
    required this.onPressed,
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Provider.of<ResponsiveManager>(context);
    return Padding(
      padding: EdgeInsets.all(responsive.response(AppPadding.p16)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Provider.of<ThemeManager>(context).error(),
          shadowColor: Provider.of<ThemeManager>(context).error(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.r16),
            side: const BorderSide(
              color: LTColors.error,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(title ?? "Cancel"),
      ),
    );
  }
}
