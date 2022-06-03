import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:tictaktoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      borderRadius: 4,
      color: Colors.blue,
      depth: 20,
      spread: 2,
      emboss: true,
      width: 355,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText, fillColor: backgroundColor, filled: true),
      ),
    );
  }
}
