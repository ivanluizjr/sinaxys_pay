import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  static const double radius = 20;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final Widget child;
  final double? elevation;
  final BorderSide? borderSide;

  const CommonCard({
    Key? key,
    required this.child,
    this.margin,
    this.color,
    this.elevation,
    this.borderSide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: elevation ?? 4,
      margin: margin,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: borderSide ?? const BorderSide(color: Colors.black)),
      child: child,
    );
  }
}
