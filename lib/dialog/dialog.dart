import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

enum DXType { OK, YES_NO }

class DialogX extends StatelessWidget {
  final DXType type;
  final String message;
  final String? title;
  final String? buttonText1;
  final String? buttonText2;
  DialogX(this.type, this.message, {this.title, this.buttonText1, this.buttonText2});

  @override
  Widget build(BuildContext context) {
    final actions = <Widget>[];

    switch (this.type) {
      case DXType.OK:
        actions.add(TextButton(child: AccentTextX(buttonText1 ?? "OK"), onPressed: () => Navigator.of(context).pop()));
        break;
      case DXType.YES_NO:
        actions.add(TextButton(child: AccentTextX(buttonText2 ?? "NO"), onPressed: () => Navigator.of(context).pop(false)));
        actions.add(TextButton(child: AccentTextX(buttonText1 ?? "YES"), onPressed: () => Navigator.of(context).pop(true)));
        break;
    }

    return AlertDialog(
      title: this.title != null ? HeaderX(this.title!) : null,
      content: TextX(this.message),
      actions: actions,
      backgroundColor: ColorX.get(context, ColorXType.CARD),
    );
  }
}

class PopupX extends StatelessWidget {
  final Widget child;
  PopupX({required this.child});

  @override
  Widget build(BuildContext context) {
    Widget child = Dialog(child: this.child, backgroundColor: Colors.transparent);
    return WillPopScope(child: child, onWillPop: () async => false);
  }
}
