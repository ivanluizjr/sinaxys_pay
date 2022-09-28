import 'package:flutter/material.dart';
import 'package:sinaxys_pay/app/images/app_images.dart';
import 'package:sinaxys_pay/app/modules/common/presenter/widget/splash/common_splash.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.sinaxySplash), fit: BoxFit.cover),
            ),
            child: const Center(
              child: CommonSplash(),
            ),
          ),
        ],
      ),
    );
  }
}
