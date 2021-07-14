import 'package:flutter/material.dart';

class ColumnX extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAlign;
  final CrossAxisAlignment crossAlign;
  final MainAxisSize size;

  ColumnX({
    required this.children,
    this.mainAlign = MainAxisAlignment.start,
    this.crossAlign = CrossAxisAlignment.start,
    this.size = MainAxisSize.min,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: children,
      mainAxisAlignment: mainAlign,
      crossAxisAlignment: crossAlign,
      mainAxisSize: size,
    );
  }
}
