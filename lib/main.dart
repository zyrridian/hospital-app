import 'package:flutter/material.dart';
import 'package:smkdev_hospital/splash_screen.dart';

void main() {
  runApp(
    HomePage()
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMKDEV HOSPITAL',
      theme: ThemeData(
        fontFamily: 'LemonMilk',
        primaryColor: Colors.blue,
        accentColor: Colors.blue
      ),
      home: SplashScreen(),
    );
  }
}
