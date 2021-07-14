import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

class DropdownButtonX<T> extends StatelessWidget {
  final T value;
  final List<DropdownMenuItem<T>> items;
  final Function(T?)? onChanged;
  final IconData icon;

  DropdownButtonX({
    required this.value,
    required this.items,
    required this.onChanged,
    this.icon = Icons.arrow_drop_down,
  });

  @override
  Widget build(BuildContext context) {
    final button = DropdownButton<T>(
      value: value,
      items: items,
      onChanged: onChanged,
      underline: Container(),
      isExpanded: true,
    );

    final decoration = BoxDecoration(border: Border.all(color: ColorX.get(context, ColorXType.DIVIDER)));
    final padding = EdgeInsets.only(top: PAD14, bottom: PAD14, right: PAD1 * 1.25, left: PAD34);
    return Container(child: button, decoration: decoration, padding: padding);
  }
}
