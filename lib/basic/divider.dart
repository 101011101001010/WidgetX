import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

class DividerX extends StatelessWidget {
  final bool vertical;
  DividerX({this.vertical = false});

  @override
  Widget build(BuildContext context) {
    final Color color = ColorX.get(context, ColorXType.DIVIDER);
    if (vertical) return VerticalDivider(width: 0.6, thickness: 0.6, color: color);
    return Divider(height: 0, thickness: 0.5, color: color);
  }
}
