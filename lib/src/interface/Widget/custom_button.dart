import '../Themes/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.buttonColor = const Color(0xFFFF5963),
    this.width = double.infinity,
    this.hight = 65,
  }) : super(key: key);
  String text;
  VoidCallback? onTap;
  Color? buttonColor;
  double? hight;
  double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(16),
        ),
        height: hight,
        width: width,
        child: Center(
            child: Text(
          text,
          style: kButton,
        )),
      ),
    );
  }
}
