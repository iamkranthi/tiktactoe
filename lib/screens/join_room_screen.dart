import 'package:flutter/material.dart';
import 'package:tictaktoe/responsive/responsive.dart';
import 'package:tictaktoe/widgets/custom_button.dart';
import 'package:tictaktoe/widgets/custom_text.dart';
import 'package:tictaktoe/widgets/custom_text_field.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = 'join-room';
  const JoinRoomScreen({Key? key}) : super(key: key);

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: 'Join Room',
                fontSize: 90,
                shadows: const [
                  Shadow(color: Colors.blue, blurRadius: 40),
                ],
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextField(
                controller: _nameController,
                hintText: 'Enter Your Name',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _gameIdController,
                hintText: 'Enter Game Id',
              ),
              SizedBox(height: size.height * 0.045),
              CustomButton(title: 'Join', onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
