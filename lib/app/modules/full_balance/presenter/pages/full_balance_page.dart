import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:sinaxys_pay/app/colors/app_colors.dart';
import 'package:sinaxys_pay/app/locales/full_balance/full_balance_page_locales.dart';
import 'package:sinaxys_pay/app/modules/common/presenter/widget/bottom_navigator_bar/common_bottom_navigator_bar.dart';
import 'package:sinaxys_pay/app/modules/common/presenter/widget/common_buttom/common_button.dart';
import 'package:sinaxys_pay/app/modules/common/presenter/widget/common_card/common_card.dart';
import 'package:sinaxys_pay/app/modules/common/presenter/widget/credit_card/common_credit_card.dart';
import 'dart:math' as math;

import 'package:sinaxys_pay/app/modules/full_balance/presenter/controllers/full_balance_page_controller.dart';

class FullBalancePage extends StatefulWidget {
  const FullBalancePage({Key? key}) : super(key: key);

  @override
  State<FullBalancePage> createState() => _FullBalancePageState();
}

class _FullBalancePageState extends State<FullBalancePage> {
  final controller = Modular.get<FullBalancePageController>();
  double angle = 0;
  bool isFront = true;
  int pageIndex = 0;

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  void _flipCard() {
    setState(() {
      angle = (angle + math.pi) % (math.pi * 2);
      isFront = !isFront;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: GestureDetector(
                      onTap: _flipCard,
                      child: CommonCreditCard(
                        name: FullBalancePageLocales.name,
                        cardNumber: FullBalancePageLocales.cardNumber,
                        validThru: FullBalancePageLocales.validThru,
                        securityCode: FullBalancePageLocales.securityCode,
                        memberSince: FullBalancePageLocales.memberSince,
                        angle: angle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    FullBalancePageLocales.balanceAvailable,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.targetCard,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      const Text(
                        FullBalancePageLocales.symbolReal,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        fit: FlexFit.tight,
                        child: AnimatedBuilder(
                          animation: controller,
                          builder: (BuildContext context, Widget? child) {
                            return Text(
                              controller.valor,
                              style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                              ),
                            );
                          },
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.50,
                          child: CommonButtons(
                            title: FullBalancePageLocales.rescue,
                            sizeTitle: 20,
                            boldText: false,
                            heightButton: 45,
                            borderRadius: BorderRadius.circular(100),
                            onPress: () {
                              controller.rescue();
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(color: AppColors.targetCardPage),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      FullBalancePageLocales.payments.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 15,
                          color: AppColors.purpleClear,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CommonCard(
                    elevation: 0,
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 30, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  FullBalancePageLocales.paymentsMade,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.targetCard,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                FullBalancePageLocales.datePaymentMade,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.targetCard,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  FullBalancePageLocales.place,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.targetCard,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                FullBalancePageLocales.placeName,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.targetCard,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  FullBalancePageLocales.amount,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.purpleDark,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                FullBalancePageLocales.symbolReal,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.purpleDark,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                FullBalancePageLocales.balanceAmount,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: AppColors.purpleDark,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: Get.width,
                            height: 0.1,
                            color: Colors.black,
                          ),
                          const SizedBox(height: 20),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              FullBalancePageLocales.seeDetails,
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.purple,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CommonBottomNagigatorBar(
        currentIndex: pageIndex,
        onTap: (index) {
          setState(
            () {
              pageIndex = index;
            },
          );
          index == 0 ? controller.navigateHomePage() : _globalKey.currentState;
        },
      ),
    );
  }
}
