import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay/app/core/widgets/app_route.dart';
import 'package:sinaxys_pay/app/modules/full_balance/full_balance_module.dart';
import 'package:sinaxys_pay/app/modules/home/home_module.dart';
import 'package:sinaxys_pay/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModuleRoute> get routes => [
        ModuleRoute(AppRoute.initialRoute,
            module: SplashModule(), transition: TransitionType.rotate),
        ModuleRoute(AppRoute.homePageRoute,
            module: HomeModule(), transition: TransitionType.rotate),
        ModuleRoute(AppRoute.fullBalancePageRoute,
            module: FullBalanceModule(), transition: TransitionType.rotate),
      ];
}
