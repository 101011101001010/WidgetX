import 'package:flutter/material.dart';

class ScaffoldX extends StatelessWidget {
  final Widget body;
  final Widget? title;
  final List<Widget>? actions;
  ScaffoldX({required this.body, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    final body = SafeArea(child: this.body);
    if (title == null) return Scaffold(resizeToAvoidBottomInset: false, body: body);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: title, actions: actions),
      body: body,
    );
  }
}
