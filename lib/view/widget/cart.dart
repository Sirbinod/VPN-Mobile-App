import 'package:flutter/material.dart';

class ReCard extends StatelessWidget {
  ReCard({@required this.card, this.color, this.radius = 10.0});
  final Widget card;
  final Color color;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: card,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      height: 40.0,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
