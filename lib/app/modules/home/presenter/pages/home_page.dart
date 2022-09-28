import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:sinaxys_pay/app/colors/app_colors.dart';
import 'package:sinaxys_pay/app/core/widgets/app_route.dart';
import 'package:sinaxys_pay/app/locales/home_page/home_page_locales.dart';
import 'package:sinaxys_pay/app/modules/common/presenter/widget/app_bar/common_app_bar.dart';
import 'package:sinaxys_pay/app/modules/common/presenter/widget/common_buttom/common_button.dart';
import 'package:sinaxys_pay/app/modules/common/presenter/widget/common_card/common_card.dart';
import 'package:sinaxys_pay/app/modules/home/presenter/controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(),
        body: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    HomePageLocales.hello + controller.name,
                    style: const TextStyle(
                      fontSize: 18,
                      color: AppColors.purpleClear,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                HomePageLocales.proofOfCredit,
                style: TextStyle(
                  fontSize: 40,
                  color: AppColors.purpleClear,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: CommonCard(
                  elevation: 0.5,
                  borderSide: const BorderSide(color: Colors.transparent),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 20),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                HomePageLocales.creditFor,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.targetCard,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              HomePageLocales.creditForName,
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
                                HomePageLocales.date,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.targetCard,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              HomePageLocales.dateCredit,
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
                                HomePageLocales.amount,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.purpleDark,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              HomePageLocales.symbolReal,
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.purpleDark,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              HomePageLocales.balanceAmount,
                              style: TextStyle(
                                fontSize: 22,
                                color: AppColors.purpleDark,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: Get.width,
                          height: 0.1,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                HomePageLocales.forecastReceipt,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.targetCard,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              HomePageLocales.forecastReceiptDate,
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.targetCard,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              HomePageLocales.forecastDate,
                              style: TextStyle(color: AppColors.forecastDate),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: Get.width,
                          height: 0.1,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Icon(
                              Icons.assignment,
                              color: AppColors.purple,
                              size: 28,
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                HomePageLocales.serviceDetails,
                                style: TextStyle(
                                  color: AppColors.purpleDark,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: Get.width,
                          height: 0.1,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Icon(
                              Icons.file_download_outlined,
                              color: AppColors.purple,
                              size: 28,
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                HomePageLocales.saveVoucher,
                                style: TextStyle(
                                  color: AppColors.purpleDark,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              AnimatedBuilder(
                animation: controller,
                builder: (BuildContext context, Widget? child) {
                  return CommonButtons(
                    title: HomePageLocales.fullBalance,
                    sizeTitle: 20,
                    boldText: false,
                    borderRadius: BorderRadius.circular(50),
                    loading: controller.loading,
                    onPress: () {
                      controller.pageTwo();
                    },
                  );
                },
              ),
            ],
          ),
        ));
  }
}
