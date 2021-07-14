import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

class ContainerX extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final Color? color;
  final bool rounded;
  final bool bordered;
  ContainerX({required this.child, this.width, this.height, this.color, this.rounded = false, this.bordered = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final border = Border.all(color: ColorX.get(context, ColorXType.DIVIDER), width: 0.5);
    final radius = rounded ? BorderRadius.all(Radius.circular(RADIUS)) : BorderRadius.zero;
    final decoration = BoxDecoration(borderRadius: radius, border: bordered ? border : null, color: color);
    return Container(child: child, decoration: decoration, width: width ?? size.width, height: height);
  }
}
