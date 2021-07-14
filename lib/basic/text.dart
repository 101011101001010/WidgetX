import 'package:flutter/material.dart';
import 'package:widgetx/widgetx.dart';

class TextX extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final FontWeight weight;
  final double? letterSpacing;
  final double? height;
  final TextAlign align;
  final int maxLines;

  TextX(
    this.text, {
    this.color,
    this.size = FONT_SIZE,
    this.weight = FontWeight.w400,
    this.letterSpacing,
    this.height,
    this.align = TextAlign.start,
    this.maxLines = 99,
  });

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontWeight: this.weight,
      fontSize: this.size,
      color: this.color,
      letterSpacing: letterSpacing,
      height: height,
    );

    return Text(
      this.text,
      style: style,
      textAlign: this.align,
      maxLines: this.maxLines,
    );
  }
}

class TitleX extends TextX {
  final String text;
  final Color? color;
  final TextAlign align;
  final double? letterSpacing;

  TitleX(this.text, {this.color, this.letterSpacing, this.align = TextAlign.start})
      : super(
          text,
          color: color,
          size: FONT_SIZE_TITLE,
          weight: FontWeight.w600,
          align: align,
          letterSpacing: letterSpacing,
        );
}

class HeaderX extends TextX {
  final String text;
  final Color? color;
  final TextAlign align;
  final bool bold;

  HeaderX(this.text, {this.color, this.align = TextAlign.start, this.bold = true})
      : super(
          text,
          color: color,
          size: FONT_SIZE_HEADER,
          weight: bold ? FontWeight.w600 : FontWeight.w400,
          align: align,
        );
}

class ButtonTextX extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign align;
  ButtonTextX(this.text, {this.color, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return TextX(
      text,
      color: color ?? ColorX.primaryL,
      letterSpacing: 1.1,
      weight: FontWeight.w500,
      align: align,
    );
  }
}

class AccentTextX extends TextX {
  final String text;
  final TextAlign align;

  AccentTextX(this.text, {this.align = TextAlign.start})
      : super(
          text,
          color: ColorX.accent,
          letterSpacing: 1.1,
          weight: FontWeight.w500,
          align: align,
        );
}

class CaptionX extends TextX {
  final String text;
  final TextAlign align;

  CaptionX(this.text, {this.align = TextAlign.start})
      : super(
          text,
          color: ColorX.caption,
          size: FONT_SIZE - 1,
          align: align,
        );
}

class ListTextX extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign align;
  ListTextX(this.text, {this.color, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return TextX(
      text,
      color: color,
      size: FONT_SIZE_HEADER,
      align: align,
    );
  }
}
