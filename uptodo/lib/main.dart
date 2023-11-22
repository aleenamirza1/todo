import 'package:flutter/material.dart';
import 'package:uptodo/splashlogsign/IntroductionScreen.dart';
import 'package:uptodo/splashlogsign/Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}

class Introview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildIntroScreen(context);
  }
}
