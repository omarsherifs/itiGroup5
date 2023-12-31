import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/screens/login_screen.dart';

// Dart entry point
void main() {
  // Flutter entry point
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  ///
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
