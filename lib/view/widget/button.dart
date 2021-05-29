import 'package:device_shield/view/widget/curveWave.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class ReButton extends StatefulWidget {
ReButton({@required this.child, this.color, this.onPressed, this.size});
final double size;
final Color color;
final Widget child;
final VoidCallback onPressed;

  @override
  _ReButtonState createState() => _ReButtonState();
}

class _ReButtonState extends State<ReButton> {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      // vsync: this,
    )..repeat();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Container(child: ClipRRect(
      borderRadius: BorderRadius.circular(widget.size),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[
              widget.color,
              Color.lerp(widget.color, Colors.black, .05)
            ],
          ),
        ),
        child: ScaleTransition(
            scale: Tween(begin: 0.95, end: 1.0).animate(
              CurvedAnimation(
                parent: _controller,
                curve:  CurveWave(),
              ),
            ),
            child: Icon(Icons.speaker_phone, size: 44,)
        ),
      ),
    ),
    );
  }
}
