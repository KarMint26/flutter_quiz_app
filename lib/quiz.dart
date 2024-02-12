import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = HomeScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  String activeScreen = "home_screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question_screen";
    });
  }

  @override
  Widget build(context) {
    // Widget widgetScreen = HomeScreen(switchScreen);
    
    // if(activeScreen == "question_screen"){
    //   widgetScreen = const QuestionsScreen();
    // }

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 107, 15, 168),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: activeScreen == "home_screen"
                ? HomeScreen(switchScreen)
                : const QuestionsScreen(),
          ),
        ),
      ),
    );
  }
}
