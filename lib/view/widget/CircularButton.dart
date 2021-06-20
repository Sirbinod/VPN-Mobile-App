import 'package:device_shield/appConfig/appColor.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final RadialGradient gradent;
  final IconData icon;
  final bool glow;

  const CircularButton(
      {this.gradent = KPrimaryGradent, @required this.icon, this.glow = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        boxShadow: glow
            ? [
                BoxShadow(
                  color: Colors.white.withOpacity(0.1),
                  blurRadius: 20.0,
                  spreadRadius: 10.0,
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20.0,
                  spreadRadius: 10.0,
                )
              ],
        border: Border.all(color: KBlackBorder, width: 4),
        gradient: gradent,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 6),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
