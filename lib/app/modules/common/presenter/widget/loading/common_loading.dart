import 'package:flutter/material.dart';
import 'package:sinaxys_pay/app/colors/app_colors.dart';

class CommonLoading extends StatelessWidget {
  final Color? color;
  final Widget? widget;
  final double? value;
  const CommonLoading({
    Key? key,
    this.color = AppColors.purple,
    this.widget,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color,
      strokeWidth: 2,
      value: value,
    );
  }
}
