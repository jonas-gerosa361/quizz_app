import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.purple.shade800,
          Colors.purple.shade600,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/quiz-logo.png",
                width: 300, color: const Color.fromARGB(150, 255, 255, 255)),
            const SizedBox(
              height: 80,
            ),
            const Text("Learn Flutter the fun way",
                style: TextStyle(color: Colors.white, fontSize: 24)),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_right_alt),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                label: const Text(
                  "Start Quiz",
                )),
          ],
        ),
      ),
    );
  }
}
