import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay/app/core/widgets/app_route.dart';
import 'package:sinaxys_pay/app/modules/splash/presenter/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.initialRoute,
            child: (context, args) => const SplashPage()),
      ];
}
