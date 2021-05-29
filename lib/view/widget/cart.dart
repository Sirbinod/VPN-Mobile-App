import 'package:flutter/material.dart';

class ReCard extends StatelessWidget {
  ReCard(
      {@required this.card,
      this.color,
      this.radius = 10.0,
      this.cardHeight = 40.0,
      this.cardWidth,
      this.vPadding,
      this.hPadding});
  final Widget card;
  final Color color;
  final double radius;
  final double cardHeight;
  final double cardWidth;
  final double vPadding;
  final double hPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: card,
      width: cardWidth,
      padding: EdgeInsets.symmetric(vertical: vPadding, horizontal: hPadding),
      margin: EdgeInsets.all(15.0),
      height: cardHeight,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
