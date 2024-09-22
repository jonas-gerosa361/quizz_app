import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeWidget;

  @override
  void initState() {
    activeWidget = StartScreen(updateWidget);
    super.initState();
  }

  void updateWidget() {
    setState(() {
      activeWidget = const Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.purple.shade800,
                Colors.purple.shade600,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Center(
              child: activeWidget,
            ),
          ),
        ),
      ),
    );
  }
}
