import 'package:flutter/material.dart';
import 'package:sinaxys_pay/app/colors/app_colors.dart';
import 'dart:math' as math;

import 'package:sinaxys_pay/app/images/app_images.dart';
import 'package:sinaxys_pay/app/locales/common_card_front/common_card_front_locales.dart';

class CommonCardFront extends StatelessWidget {
  final String cardNumber;
  const CommonCardFront({
    Key? key,
    required this.cardNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.4, 0.8, 1],
          colors: [
            AppColors.purple,
            AppColors.purpleClear,
            AppColors.purpleDark,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 30,
            bottom: 30,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(cardNumber,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            left: 35,
            top: 65,
            child: Row(
              children: [
                Container(
                  width: 50,
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset(AppImages.chipIcon),
                ),
                Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: const Icon(
                    Icons.wifi,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Row(
              children: [
                const Text(
                  CommonCardFrontLocales.sinaxys,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  CommonCardFrontLocales.pay.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white12,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 10,
            child: SizedBox(
              width: 60,
              child: Image.asset(AppImages.masterCardLogo),
            ),
          ),
        ],
      ),
    );
  }
}
