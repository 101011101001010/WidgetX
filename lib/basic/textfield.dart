import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgetx/widgetx.dart';

class TextFieldX extends StatelessWidget {
  final TextEditingController? controller;
  final String? placeholder;
  final int limit;
  final bool enabled;
  final TextCapitalization capitalization;
  final bool password;
  final TextInputType? inputType;
  final bool error;
  final String? autofillHints;
  final FocusNode? node;
  final Function(String)? onChanged;
  final bool center;
  final TextInputAction action;

  TextFieldX({
    this.onChanged,
    this.controller,
    this.placeholder,
    this.inputType,
    this.limit = 100,
    this.enabled = true,
    this.capitalization = TextCapitalization.none,
    this.password = false,
    this.error = false,
    this.autofillHints,
    this.node,
    this.center = false,
    this.action = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) {
    final EdgeInsetsGeometry padding = EdgeInsets.symmetric(vertical: PAD34, horizontal: PAD12);
    final Color color = error ? ColorX.negative : ColorX.accent;
    final OutlineInputBorder border = OutlineInputBorder(borderSide: BorderSide(color: color));

    final InputDecoration decoration = InputDecoration(
      contentPadding: padding,
      hintStyle: TextStyle(color: ColorX.caption),
      hintText: placeholder,
      border: border,
      focusedBorder: border,
      enabledBorder: border,
      disabledBorder: border,
      counterText: "",
    );

    return TextField(
      autofocus: false,
      controller: controller,
      onChanged: (controller == null) ? onChanged : null,
      focusNode: node,
      obscureText: password,
      enableSuggestions: false,
      autocorrect: false,
      inputFormatters: [LengthLimitingTextInputFormatter(limit)],
      decoration: decoration,
      maxLength: limit,
      keyboardType: inputType,
      enabled: enabled,
      textCapitalization: capitalization,
      textInputAction: TextInputAction.next,
      autofillHints: autofillHints != null ? [autofillHints!] : null,
      textAlign: center ? TextAlign.center : TextAlign.start,
      style: TextStyle(color: ColorX.get(context, ColorXType.TEXT)),
    );
  }
}
