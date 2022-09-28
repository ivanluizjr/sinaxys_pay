import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay/app/core/widgets/app_route.dart';
import 'package:sinaxys_pay/app/modules/home/presenter/controllers/home_page_controller.dart';
import 'package:sinaxys_pay/app/modules/home/presenter/pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => HomePageController(),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.initialRoute,
            child: (context, args) => const HomePage()),
      ];
}
