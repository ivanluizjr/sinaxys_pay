import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay/app/core/widgets/app_route.dart';
import 'package:sinaxys_pay/app/modules/full_balance/presenter/controllers/full_balance_page_controller.dart';
import 'package:sinaxys_pay/app/modules/full_balance/presenter/pages/full_balance_page.dart';

class FullBalanceModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => FullBalancePageController(),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.initialRoute,
            child: (context, args) => const FullBalancePage()),
      ];
}
