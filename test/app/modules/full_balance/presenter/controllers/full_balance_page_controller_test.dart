import 'package:flutter_test/flutter_test.dart';
import 'package:sinaxys_pay/app/modules/full_balance/presenter/controllers/full_balance_page_controller.dart';

void main() {
  test('Se o valor for alterado ele será igual a 00,00', () async {
    // Arrange
    final fullBalance = FullBalancePageController();

    // Action
    fullBalance.rescue();

    // Assert
    expect(fullBalance.valor, '00,00');
  });
}
