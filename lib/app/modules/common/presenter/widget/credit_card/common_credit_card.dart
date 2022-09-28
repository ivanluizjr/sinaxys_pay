import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:sinaxys_pay/app/modules/common/presenter/widget/card_back/common_card_back.dart';
import 'package:sinaxys_pay/app/modules/common/presenter/widget/card_front/common_card_front.dart';

class CommonCreditCard extends StatelessWidget {
  final String name;
  final String cardNumber;
  final String memberSince;
  final String validThru;
  final int securityCode;
  final double angle;
  const CommonCreditCard(
      {Key? key,
      required this.name,
      required this.cardNumber,
      required this.validThru,
      required this.securityCode,
      required this.angle,
      required this.memberSince})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: angle),
      duration: const Duration(milliseconds: 500),
      builder: (BuildContext context, double val, __) {
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(val),
          child: Card(
            elevation: 10,
            color: Colors.transparent,
            child: (val >= math.pi / 2)
                ? CommonCardBack(
                    name: name,
                    memberSince: memberSince,
                    validThru: validThru,
                    securityCode: securityCode)
                : CommonCardFront(cardNumber: cardNumber),
          ),
        );
      },
    );
  }
}
