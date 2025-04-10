import 'package:flutter/material.dart';
import 'package:ui_flutter/views/arrival.dart';
import 'package:ui_flutter/views/login.dart'; // Make sure this exists

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarePill App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TapWrapper(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TapWrapper extends StatelessWidget {
  const TapWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
      child: const CarePillApp(), // Your original home screen
    );
  }
}
