import 'package:flutter/material.dart';
import 'package:pick_me_clone/authenticate/login_screen.dart';
import 'package:pick_me_clone/authenticate/on_boarding.dart';
import 'package:pick_me_clone/authenticate/verify_screen.dart';
import 'package:pick_me_clone/screens/main_screen.dart';

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
        '/login': (context) => const LoginScreen(),
        '/Verify': (context) => const VerifyScreen(),
        '/main': (context) => const MainScreen(),
        
      },
      
    );
  }
}
