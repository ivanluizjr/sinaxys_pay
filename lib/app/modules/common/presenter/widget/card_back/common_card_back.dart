import 'package:flutter/material.dart';
import 'package:sinaxys_pay/app/colors/app_colors.dart';
import 'dart:math' as math;

import 'package:sinaxys_pay/app/images/app_images.dart';
import 'package:sinaxys_pay/app/locales/common_card_back/common_card_back_locales.dart';

class CommonCardBack extends StatelessWidget {
  final String name;
  final String validThru;
  final int securityCode;
  final String memberSince;
  const CommonCardBack({
    Key? key,
    required this.name,
    required this.validThru,
    required this.securityCode,
    required this.memberSince,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()..rotateY(math.pi),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
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
                  left: 0,
                  top: 20,
                  child: Container(
                    height: 60,
                    width: constraints.maxWidth,
                    color: AppColors.targetCard,
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 20,
                  child: SizedBox(
                    width: 60,
                    child: Image.asset(AppImages.cirrusLogo),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(children: [
                          SizedBox(
                            width: 60,
                            child: Flex(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              direction: Axis.horizontal,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    CommonCardBackLocales.memberSize
                                        .toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 4),
                                  ),
                                ),
                                Flexible(
                                  flex: 4,
                                  child: Text(
                                    memberSince,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: 70,
                            child: Flex(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              direction: Axis.horizontal,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    CommonCardBackLocales.validThru
                                        .toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 4),
                                  ),
                                ),
                                Flexible(
                                  flex: 4,
                                  child: Text(
                                    validThru,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 60,
                            padding: const EdgeInsets.only(left: 10),
                            child: Flex(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              direction: Axis.horizontal,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    CommonCardBackLocales.securityCode
                                        .toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 4),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: Text(
                                    securityCode == 0
                                        ? ''
                                        : securityCode.toString(),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
