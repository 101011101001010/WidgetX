import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

class ButtonX extends StatelessWidget {
  final Widget text;
  final Widget? leading;
  final Function()? onPressed;
  final Color? color;
  final bool fill;

  ButtonX({
    required this.text,
    this.leading,
    this.onPressed,
    this.color,
    this.fill = true,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.all(Radius.circular(RADIUS));
    final child, vPad, hPad;

    if (this.leading != null) {
      if (fill) {
        hPad = PAD2;

        child = Row(mainAxisSize: MainAxisSize.min, children: [
          this.leading!,
          SizedBox(width: hPad),
          Expanded(child: Center(child: text)),
          SizedBox(width: hPad + ICON_SIZE),
        ]);
      } else {
        hPad = PAD1 * 1.25;

        child = Row(mainAxisSize: MainAxisSize.min, children: [
          this.leading!,
          SizedBox(width: hPad),
          text,
        ]);
      }

      vPad = PAD1;
    } else {
      child = fill ? Container(child: Center(child: text), width: MediaQuery.of(context).size.width) : text;
      vPad = PAD1 * 1.25;
      hPad = vPad;
    }

    final style = ElevatedButton.styleFrom(
      primary: this.color ?? ColorX.accent,
      shadowColor: ColorX.get(context, ColorXType.PRIMARY),
      elevation: ELEVATION,
      shape: RoundedRectangleBorder(borderRadius: radius),
      padding: EdgeInsets.symmetric(vertical: vPad, horizontal: hPad),
    );

    return ElevatedButton(
      child: child,
      onPressed: this.onPressed,
      style: style,
    );
  }
}

class IconButtonX extends StatelessWidget {
  final Widget icon;
  final Function()? onPressed;
  final bool nav;

  IconButtonX({
    required this.icon,
    this.onPressed,
    this.nav = false,
  });

  @override
  Widget build(BuildContext context) {
    final child = GestureDetector(onTap: onPressed, child: icon);
    final pad = PAD34;
    return nav ? Pad(child, h: pad) : Pad(child, l: pad);
  }
}

class FloatButtonX extends StatelessWidget {
  final String heroTag;
  final Widget child;
  final Color? color;
  final Function()? onPressed;

  FloatButtonX({
    required this.heroTag,
    required this.child,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final Color color = this.color ?? ColorX.accent;

    return FloatingActionButton(
      child: child,
      heroTag: heroTag,
      backgroundColor: color,
      onPressed: onPressed,
    );
  }
}

class SquareButtonX extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final Color? color;
  final bool rounded;

  SquareButtonX({
    required this.child,
    this.onPressed,
    this.color,
    this.rounded = true,
  });

  @override
  Widget build(BuildContext context) {
    final radius = rounded ? BorderRadius.all(Radius.circular(RADIUS)) : BorderRadius.zero;

    final style = ElevatedButton.styleFrom(
      primary: this.color ?? ColorX.accent,
      shadowColor: ColorX.get(context, ColorXType.PRIMARY),
      elevation: ELEVATION,
      shape: RoundedRectangleBorder(borderRadius: radius),
      padding: EdgeInsets.symmetric(vertical: PAD1, horizontal: PAD14),
    );

    return ElevatedButton(
      child: this.child,
      onPressed: this.onPressed,
      style: style,
    );
  }
}
