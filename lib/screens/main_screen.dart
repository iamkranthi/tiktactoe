import 'package:flutter/material.dart';
import 'package:tictaktoe/responsive/responsive.dart';
import 'package:tictaktoe/screens/create_room_screen.dart';
import 'package:tictaktoe/screens/join_room_screen.dart';
import 'package:tictaktoe/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName ='Main-Menu';
  const MainMenuScreen({Key? key}) : super(key: key);

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          CustomButton(title: 'Create a room', onTap: () => createRoom(context)),
          const SizedBox(height: 24),
          CustomButton(title: 'Join a room', onTap: ()=> joinRoom(context)),
              ],
            ),
        ));
  }
}
