import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({required this.onChangeScreen, super.key});

  final void Function() onChangeScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 106, 187, 241),
              Color.fromARGB(174, 25, 117, 255),
              Color.fromARGB(201, 11, 58, 159)
            ], begin: Alignment.topCenter, end: Alignment.bottomLeft)),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/cartoon.png'),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to TASKSPARK+",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "TASKSPARK+ will helps you to stay organized and perform your task much faster",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: ElevatedButton(
              onPressed: () => {onChangeScreen()},
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
