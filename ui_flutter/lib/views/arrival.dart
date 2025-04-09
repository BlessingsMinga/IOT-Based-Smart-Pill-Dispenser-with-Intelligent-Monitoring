import 'package:flutter/material.dart';


class CarePillApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Capsule Icon
            Container(
              width: 100,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF007DC5), // Blue top
                    Color(0xFF00B49F), // Green bottom
                  ],
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Heart icon
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  ),
                  // Simulated waves/wifi
                  Positioned(
                    top: 40,
                    right: 20,
                    child: Icon(
                      Icons.wifi,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // App Name
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Care',
                    style: TextStyle(color: Color(0xFF00B49F)),
                  ),
                  TextSpan(
                    text: 'Pill',
                    style: TextStyle(color: Color(0xFF007DC5)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
