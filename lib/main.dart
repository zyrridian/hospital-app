import 'package:flutter/material.dart';
import 'package:smkdev_hospital/features/splash_screen.dart';
import 'package:smkdev_hospital/routes/router.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SMKDEV HOSPITAL',
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.blue,
        // accentColor: Colors.blue
      ),
      // home: const SplashScreen(),
    );
  }
}
