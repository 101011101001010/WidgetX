import 'package:flutter/material.dart';

Future<T?> showModalSheet<T>(BuildContext context, WidgetBuilder builder, {bool root = true, bool scroll = true, bool dismissable = false}) {
  return showModalBottomSheet(
    context: context,
    builder: builder,
    useRootNavigator: root,
    isScrollControlled: scroll,
    backgroundColor: Colors.transparent,
    isDismissible: dismissable,
  );
}
