import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay/app/core/widgets/app_route.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Card(
              elevation: 0,
              color: const Color.fromARGB(255, 242, 227, 255),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              child: ClipOval(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: const Color.fromARGB(255, 76, 11, 129),
                    child: const SizedBox(
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                    onTap: () {
                      Modular.to.navigate(AppRoute.initialRoute);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
