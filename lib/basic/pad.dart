import 'package:flutter/material.dart';

class Pad extends StatelessWidget {
  final Widget child;
  final double? a;
  final double? v;
  final double? h;
  final double? t;
  final double? b;
  final double? l;
  final double? r;
  Pad(this.child, {this.a, this.v, this.h, this.t, this.b, this.l, this.r});

  @override
  Widget build(BuildContext context) {
    if (a != null) return Padding(child: child, padding: EdgeInsets.all(a!));
    final double t, b, l, r;

    if (v != null) {
      t = v!;
      b = v!;
    } else {
      t = this.t ?? 0;
      b = this.b ?? 0;
    }

    if (h != null) {
      l = h!;
      r = h!;
    } else {
      l = this.l ?? 0;
      r = this.r ?? 0;
    }

    return Padding(child: child, padding: EdgeInsets.only(left: l, right: r, top: t, bottom: b));
  }
}
