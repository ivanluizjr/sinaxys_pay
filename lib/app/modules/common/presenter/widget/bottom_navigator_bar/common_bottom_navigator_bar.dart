import 'package:flutter/material.dart';
import 'package:sinaxys_pay/app/colors/app_colors.dart';

class CommonBottomNagigatorBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CommonBottomNagigatorBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CommonBottomNagigatorBar> createState() =>
      _CommonBottomNagigatorBarState();
}

class _CommonBottomNagigatorBarState extends State<CommonBottomNagigatorBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.medical_services_rounded,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.credit_card,
          ),
          label: 'SinaxysPay',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_bubble_outline_rounded,
          ),
          label: 'Mensagens',
        ),
      ],
      currentIndex: widget.currentIndex,
      unselectedFontSize: 12,
      unselectedItemColor: AppColors.targetCard,
      selectedItemColor: AppColors.purple,
      selectedFontSize: 20,
      selectedIconTheme: const IconThemeData(color: AppColors.purple, size: 40),
      onTap: widget.onTap,
    );
  }
}
