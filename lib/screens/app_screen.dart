import 'package:flutter/material.dart';
import 'package:todo/screens/todo_main.dart';
import 'package:todo/screens/welcome.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() {
    return _AppScreenState();
  }
}

class _AppScreenState extends State<AppScreen> {
  Widget? activeScreen;

  void changeScreenBackward() {
    setState(() {
      activeScreen = WelcomeScreen(onChangeScreen: changeScreenForward);
    });
  }

  void changeScreenForward() {
    setState(() {
      activeScreen = TodoScreen(onChangeScreen: changeScreenBackward);
    });
  }

  @override
  void initState() {
    activeScreen = WelcomeScreen(onChangeScreen: changeScreenForward);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activeScreen,
    );
  }
}
