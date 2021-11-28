import 'package:flutter/material.dart';

import 'login_screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Plant",
      home: SplashScreen(),
      //Splash_Screen(),
    );
  }
}