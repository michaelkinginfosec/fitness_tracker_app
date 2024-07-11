import 'package:fitness_tracker_app/views/assume_first_screen.dart';
import 'package:fitness_tracker_app/views/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      routes: {
        '/assumedScreen': (context) => const AssumeFirestScreen(),
      },
    );
  }
}
