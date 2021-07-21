import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

class IconX extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final double size;
  IconX(this.icon, {this.color, this.size = (kIsWeb ? ICON_SIZE_WEB : ICON_SIZE)});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: size);
  }
}

class ListIconX extends IconX {
  final IconData icon;
  final Color? color;
  ListIconX(this.icon, {this.color}) : super(icon, color: color, size: 40);
}

class ButtonIconX extends IconX {
  final IconData icon;
  ButtonIconX(this.icon) : super(icon, color: ColorX.primaryL);
}

class AccentIconX extends IconX {
  final IconData icon;
  AccentIconX(this.icon) : super(icon, color: ColorX.accent);
}
