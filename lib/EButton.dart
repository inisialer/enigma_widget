import 'package:enigma_widget/style/color_helper.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final double? height;
  final double? width;
  final Color? color;
  final Color? titleColor;
  const MainButton({
    super.key,
    required this.title,
    required this.onTap,
    this.height,
    this.width,
    this.color,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 1,
            backgroundColor: color ?? ColorHelper.baseColor,
            shape: RoundedRectangleBorder(
              // Change your radius here
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(color: titleColor ?? Colors.white),
          )),
    );
  }
}
