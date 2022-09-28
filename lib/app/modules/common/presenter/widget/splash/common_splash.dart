import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay/app/core/widgets/app_route.dart';

import '../loading/common_loading.dart';

class CommonSplash extends StatefulWidget {
  const CommonSplash({Key? key}) : super(key: key);

  @override
  State<CommonSplash> createState() => _CommonSplashState();
}

class _CommonSplashState extends State<CommonSplash>
    with SingleTickerProviderStateMixin {
  final bool isLogged = false;

  Future splashNavigation() {
    return Future.delayed(
      const Duration(seconds: 3),
      () async {
        await Modular.to.pushReplacementNamed(AppRoute.homePageRoute);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    splashNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return const CommonLoading();
  }
}
