import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma Sample',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: const Color(0xFFF7F3F0),
      ),
      initialRoute: '/landing',
      routes: {
        '/landing': (context) => const LandingScreen(),
        '/signin': (context) => const HomeScreen(),
      },
    );
  }
}
