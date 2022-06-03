import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  List<Shadow> shadows;
  final String text;
  final double fontSize;

  CustomText(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.shadows})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        shadows: shadows,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
