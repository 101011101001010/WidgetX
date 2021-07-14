import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

Future<T?> showDialogX<T>(BuildContext context, WidgetBuilder builder, {bool dismissible = false}) {
  return showDialog<T>(
    context: context,
    builder: builder,
    useRootNavigator: false,
    barrierDismissible: dismissible,
  );
}

void hidePopup(BuildContext context) {
  return Navigator.of(context).pop();
}

Future<void> showPopup(BuildContext context, String message) {
  Widget child = ColumnX(crossAlign: CrossAxisAlignment.center, children: [
    LoadingIndicatorX(),
    SizedBox(height: PAD1),
    TextX(message, align: TextAlign.center),
  ]);

  final radius = BorderRadius.circular(RADIUS);
  final color = ColorX.get(context, ColorXType.CARD).withOpacity(0.75);
  child = Container(child: child, padding: EdgeInsets.all(PAD1), decoration: BoxDecoration(borderRadius: radius, color: color));
  child = ClipRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16), child: child));
  return showDialogX(context, (context) => PopupX(child: child));
}

Future<void> showOKDialog(BuildContext context, String message, {String? title, String? buttonText}) {
  return showDialogX<void>(context, (context) => DialogX(DXType.OK, message, title: title, buttonText1: buttonText));
}

Future<bool?> showYesNoDialog(BuildContext context, String message, {String? title, String? yesButtonText, String? noButtonText}) {
  return showDialogX<bool>(context, (context) => DialogX(DXType.YES_NO, message, title: title, buttonText1: yesButtonText, buttonText2: noButtonText));
}
