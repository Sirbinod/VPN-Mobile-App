import 'package:device_shield/appConfig/appColor.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {this.child,
      this.borderRadius = 10.0,
      this.borderColor = KPrimaryBorder,
      this.color = KPrimaryColor,
      this.padding = const EdgeInsets.all(10)});
  final double borderRadius;
  final Color color;
  final Color borderColor;
  final Widget child;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: 3),
      ),
      child: child,
    );
  }
}
