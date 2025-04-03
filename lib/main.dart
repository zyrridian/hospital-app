import 'package:flutter/material.dart';
import 'package:smkdev_hospital/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMKDEV HOSPITAL',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.blue,
        // accentColor: Colors.blue
      ),
      home: const SplashScreen(),
    );
  }
}
