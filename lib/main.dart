import 'package:flutter/material.dart';
import 'package:pick_me_clone/authenticate/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PickMe",
      routes: {
        '/': (context) => const OnBoardingScreen(),
      },
    );
  }
}
