import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void handlePress() {
    debugPrint("Clicked Button");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Opacity(
        //   opacity: 0.6,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: handlePress,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 15,
            ),
            side: const BorderSide(
              width: 1,
              color: Colors.black26,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.elliptical(10, 10),
              ),
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"),
        )
      ],
    );
  }
}
