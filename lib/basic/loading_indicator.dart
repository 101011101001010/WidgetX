import 'package:flutter/material.dart';

class LoadingIndicatorX extends StatefulWidget {
  final double size;
  LoadingIndicatorX({this.size = 36.0});
  @override
  _LoadingIndicatorXState createState() => _LoadingIndicatorXState();
}

class _LoadingIndicatorXState extends State<LoadingIndicatorX> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 2000),
    vsync: this,
  )..repeat(reverse: false);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final image = Image.asset("assets/mascot.png", width: widget.size, fit: BoxFit.contain);
    //return Center(child: RotationTransition(turns: _animation, child: image));
    return Center(child: CircularProgressIndicator());
  }
}
