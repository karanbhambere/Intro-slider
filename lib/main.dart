import 'package:flutter/material.dart';
import 'package:scrolling_1/Screens/Splash_screen.dart';

void main() {
  runApp(const SrollingApp());
}

class SrollingApp extends StatelessWidget {
  const SrollingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
