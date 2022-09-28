import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay/app/core/widgets/app_route.dart';
import 'package:sinaxys_pay/app/locales/home_page/home_page_locales.dart';

class HomePageController extends ChangeNotifier {
  final String _name = HomePageLocales.name;
  bool loading = false;

  setLoadingTrue() {
    loading = true;
    notifyListeners();
  }

  nameUser() {
    _name;
    notifyListeners();
  }

  String get name => _name;

  pageTwo() {
    try {
      setLoadingTrue();
      Future.delayed(
        const Duration(seconds: 3),
        () async {
          await Modular.to.pushNamed(AppRoute.fullBalancePageRoute);
        },
      );
    } catch (e) {
      throw 'Error';
    }
  }
}
