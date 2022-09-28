import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:sinaxys_pay/app/core/widgets/app_theme_widget.dart';

abstract class BaseWidget<T extends ChangeNotifier> extends StatelessWidget {
  BaseWidget({Key? key}) : super(key: key);

  final Set<T> _value = <T>{};
  final AppTheme appTheme = AppTheme();

  final text = AppTheme().text;

  final double width = Get.width;
  final double height = Get.height;

  Widget space(double value, {bool width = false}) {
    return SizedBox(
      height: !width ? Get.height * value : 0,
      width: width ? Get.width * value : 0,
    );
  }

  T get controller {
    if (_value.isEmpty) _value.add(Modular.get<T>());
    return _value.first;
  }

  @override
  Widget build(BuildContext context);
}
