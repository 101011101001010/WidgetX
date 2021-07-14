import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

class ModalContainerX extends StatelessWidget {
  final Widget child;
  final double padding;
  final double? width;
  final double? height;
  final bool opaque;
  ModalContainerX({required this.child, this.padding = 0, this.width, this.height, this.opaque = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = this.height != null ? size.height * this.height! : null;
    final color = ColorX.get(context, opaque ? ColorXType.PRIMARY : ColorXType.CARD).withOpacity(opaque ? 1.0 : 0.8);
    Widget child = this.child;
    child = Container(padding: EdgeInsets.all(padding), width: this.width ?? size.width, height: height, child: child, color: color);
    child = ClipRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16), child: child));
    return child;
  }
}

class ModalSheetX extends StatelessWidget {
  final Widget child;
  final Widget? title;
  final Function()? onClose;
  final bool divider;
  final bool pop;
  final bool scrollable;
  ModalSheetX({required this.child, this.title, this.onClose, this.divider = true, this.pop = true, this.scrollable = false});

  @override
  Widget build(BuildContext context) {
    Widget titleRow = Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(height: PAD12),
      Expanded(child: this.title != null ? this.title! : Container()),
      SizedBox(width: PAD1),
      IconButtonX(icon: AccentIconX(Icons.close), onPressed: () => onPressed(context), nav: false),
    ]);

    titleRow = Padding(padding: EdgeInsets.symmetric(horizontal: PAD1, vertical: PAD1), child: titleRow);
    final mediaQuery = MediaQuery.of(context);

    Widget child = Column(mainAxisSize: MainAxisSize.min, children: [
      this.child,
      SizedBox(width: mediaQuery.size.width, height: mediaQuery.viewInsets.bottom),
    ]);

    if (scrollable) child = Expanded(child: SingleChildScrollView(child: child));
    if (this.title != null) return ColumnX(children: [titleRow, if (divider) DividerX(), child]);
    titleRow = PositionedX(align: Alignment.topRight, child: titleRow);
    return Stack(children: [child, titleRow]);
  }

  Future<void> onPressed(BuildContext context) async {
    if (pop) Navigator.of(context).pop();
    if (onClose != null) onClose!();
  }
}
