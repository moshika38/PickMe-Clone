import 'package:flutter/material.dart';
import 'package:pick_me_clone/utils/routings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "PickMe",
       routerConfig: Routings.router,
    );
  }
}
