import 'package:flutter/material.dart';

class PositionedX extends StatelessWidget {
  final Alignment align;
  final Widget child;
  final bool fill;
  PositionedX({required this.align, required this.child, this.fill = true});

  @override
  Widget build(BuildContext context) {
    final Widget body = Align(alignment: align, child: child);
    return fill ? Positioned.fill(child: body) : Positioned(child: body);
  }
}
