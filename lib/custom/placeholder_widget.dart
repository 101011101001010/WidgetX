import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

class PlaceholderWidgetX extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  PlaceholderWidgetX({required this.icon, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    final icon = Icon(
      this.icon,
      size: MediaQuery.of(context).size.width * 0.2,
      color: this.color,
    );

    final column = ColumnX(crossAlign: CrossAxisAlignment.center, children: [
      icon,
      SizedBox(height: PAD2),
      TextX(this.text, weight: FontWeight.w600),
      SizedBox(height: PAD2),
    ]);

    return Center(child: column);
  }
}

class ErrorWidgetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final icon = Icon(
      Icons.sentiment_very_dissatisfied_outlined,
      size: MediaQuery.of(context).size.width * 0.2,
      color: ColorX.negative,
    );

    final column = ColumnX(crossAlign: CrossAxisAlignment.center, children: [
      icon,
      SizedBox(height: PAD2),
      TextX("An unexpected error occurred.", weight: FontWeight.w600),
      SizedBox(height: PAD1),
    ]);

    return Center(child: column);
  }
}

class LoadingWidgetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final column = ColumnX(crossAlign: CrossAxisAlignment.center, children: [
      LoadingIndicatorX(size: MediaQuery.of(context).size.width * 0.2),
      SizedBox(height: PAD2),
      TextX("Retrieving data from the server...", weight: FontWeight.w600),
      SizedBox(height: PAD1),
    ]);

    return Center(child: column);
  }
}
