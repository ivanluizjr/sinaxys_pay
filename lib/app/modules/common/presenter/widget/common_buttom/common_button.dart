import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sinaxys_pay/app/colors/app_colors.dart';

import '../../../../../core/widgets/base_widget.dart';

class CommonButtons extends BaseWidget {
  CommonButtons({
    Key? key,
    required this.title,
    this.sizeTitle,
    this.heightButton,
    this.onPress,
    this.colorTitle,
    this.colorIcon,
    this.colorButton,
    this.colorBorder,
    this.cleanButton = false,
    this.boldText = true,
    this.iconRight = false,
    this.iconLeft = false,
    this.loading = false,
    this.textUnderline = false,
    this.paddingHorizontal,
    this.textAlign,
    this.loadingColor,
    this.icon,
    this.iconSize,
    this.borderRadius,
  }) : super(key: key);

  final String title;
  final double? sizeTitle;
  final double? paddingHorizontal;
  final double? heightButton;
  final Function()? onPress;
  final Color? colorTitle;
  final Color? colorButton;
  final Color? colorBorder;
  final bool cleanButton;
  final bool boldText;
  final bool loading;
  final bool textUnderline;
  final Color? loadingColor;
  final bool iconRight;
  final bool iconLeft;
  final TextAlign? textAlign;
  final IconData? icon;
  final Color? colorIcon;
  final double? iconSize;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    if (cleanButton) {
      return Center(
        child: !loading
            ? TextButton(
                onPressed: onPress,
                style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent)),
                child: text(title,
                    color: colorTitle ?? AppColors.text,
                    fontWeight: boldText ? FontWeight.w600 : FontWeight.normal,
                    fontSize: sizeTitle,
                    decoration:
                        textUnderline ? TextDecoration.underline : null))
            : Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SpinKitThreeBounce(
                  duration: const Duration(seconds: 3),
                  color: loadingColor ?? Colors.white,
                  size: 20,
                ),
              ),
      );
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal ?? 20),
      child: SizedBox(
        width: width,
        height: heightButton ?? 50,
        child: ElevatedButton(
          onPressed: loading ? () {} : onPress,
          style: onPress != null ? enableButtonStyle() : disableButtonStyle(),
          child: !loading
              ? Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: text(title,
                          color: colorTitle ?? AppColors.textSecondary,
                          fontWeight:
                              boldText ? FontWeight.bold : FontWeight.normal,
                          fontSize: sizeTitle ?? 14,
                          textAlign: textAlign ?? TextAlign.center,
                          decoration:
                              textUnderline ? TextDecoration.underline : null),
                    ),
                    if (iconRight)
                      Positioned(
                        right: 0,
                        child: Icon(
                          icon ?? Icons.arrow_forward_ios,
                          color: colorIcon ?? AppColors.text,
                          size: iconSize ?? 20,
                        ),
                      ),
                    if (iconLeft)
                      Positioned(
                        left: 0,
                        child: Icon(
                          icon ?? Icons.keyboard_arrow_left_outlined,
                          color: colorIcon ?? AppColors.text,
                          size: iconSize ?? 20,
                        ),
                      ),
                  ],
                )
              : Center(
                  child: SpinKitThreeBounce(
                    color: loadingColor ?? Colors.white,
                    size: 20,
                  ),
                ),
        ),
      ),
    );
  }

  ButtonStyle enableButtonStyle() {
    return ButtonStyle(
        // overlayColor: MaterialStateProperty.all<Color>(
        //     AppColors.buttonsColor.withOpacity(0.1)),
        backgroundColor: MaterialStateProperty.all<Color>(
            colorButton ?? AppColors.buttonsColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(5.0),
                side: colorBorder != null
                    ? BorderSide(color: colorBorder!)
                    : BorderSide.none)));
  }

  ButtonStyle disableButtonStyle() {
    return ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(
            AppColors.buttonsDisableColor.withOpacity(0.1)),
        backgroundColor: MaterialStateProperty.all<Color>(
            colorButton?.withOpacity(0.4) ??
                AppColors.buttonsDisableColor.withOpacity(0.4)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(5.0),
                side: colorBorder != null
                    ? BorderSide(color: colorBorder!)
                    : BorderSide.none)));
  }
}
