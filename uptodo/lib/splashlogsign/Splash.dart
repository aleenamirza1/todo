import 'package:flutter/material.dart';
import 'package:uptodo/main.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Introview()));
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset(
            'assets/images/Splash.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
