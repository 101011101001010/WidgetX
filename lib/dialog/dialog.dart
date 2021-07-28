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
        final button = TextButtonX(text: buttonText1 ?? "OK", onPressed: () => Navigator.of(context).pop());
        actions.add(Pad(button, r: PAD1, b: PAD1));
        break;
      case DXType.YES_NO:
        final noButton = TextButtonX(text: buttonText2 ?? "NO", onPressed: () => Navigator.of(context).pop(false));
        final yesButton = TextButtonX(text: buttonText1 ?? "YES", onPressed: () => Navigator.of(context).pop(true));
        actions.add(Pad(noButton, r: PAD1, b: PAD1));
        actions.add(Pad(yesButton, r: PAD1, b: PAD1));
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
