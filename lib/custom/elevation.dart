import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

class ElevationX extends StatelessWidget {
  final Widget child;
  ElevationX({required this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: child,
      elevation: ELEVATION,
      shadowColor: ColorX.get(context, ColorXType.PRIMARY),
      color: ColorX.get(context, ColorXType.CARD),
    );
  }
}
