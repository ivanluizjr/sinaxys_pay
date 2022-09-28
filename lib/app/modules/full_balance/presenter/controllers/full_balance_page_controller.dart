import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay/app/core/widgets/app_route.dart';
import 'package:sinaxys_pay/app/locales/full_balance/full_balance_page_locales.dart';

class FullBalancePageController extends ChangeNotifier {
  String _valor = FullBalancePageLocales.balanceAmount;

  navigateHomePage() {
    Modular.to.pushNamed(AppRoute.homePageRoute);
    notifyListeners();
  }

  rescue() {
    _valor = '00,00';
    notifyListeners();
  }

  String get valor => _valor;
}
