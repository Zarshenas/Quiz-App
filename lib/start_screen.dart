import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuizHandler, {super.key});
  final void Function() startQuizHandler;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
            color: const Color.fromARGB(206, 224, 239, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Play and have fun! 😉",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: startQuizHandler,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(),
            ),
            icon: const Icon(
              Icons.arrow_right_rounded,
              size: 40,
            ),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
