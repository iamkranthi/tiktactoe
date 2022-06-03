import 'package:flutter/material.dart';
import 'package:tictaktoe/screens/create_room_screen.dart';
import 'package:tictaktoe/screens/join_room_screen.dart';
import 'package:tictaktoe/screens/main_screen.dart';
import 'package:tictaktoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      routes: {
        MainMenuScreen.routeName:(context) => const MainMenuScreen(),
        CreateRoomScreen.routeName:(context) => const CreateRoomScreen(),
        JoinRoomScreen.routeName:(context) => const JoinRoomScreen(),
      },
      home: const MainMenuScreen(),
    );
  }
}
