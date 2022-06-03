import 'package:flutter/material.dart';
import 'package:tictaktoe/responsive/responsive.dart';
import 'package:tictaktoe/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName ='Main-Menu';
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          CustomButton(title: 'Create a room', onTap: () {}),
          const SizedBox(height: 24),
          CustomButton(title: 'Join a room', onTap: () {}),
              ],
            ),
        ));
  }
}
