// Package
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Files
import '/config/config.dart';

class SwitchButtonWidget extends StatefulWidget {
  final bool value;
  final Function(bool) onChanged;
  final double? scale;

  const SwitchButtonWidget({
    required this.value,
    required this.onChanged,
    this.scale,
    super.key,
  });

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final themeC = Provider.of<ThemeManager>(context);

    return Transform.scale(
      scale: widget.scale??0.8,
      child: Switch.adaptive(
        // This bool value toggles the switch.
        value: widget.value,
        inactiveTrackColor:
            Provider.of<ThemeManager>(context).borderColor(),
        activeTrackColor: themeC.primary(),
        activeColor:  themeC.primary(),
        onChanged: (bool value) {
          widget.onChanged(value);
        },
      ),
    );
  }
}
