import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:uptodo/splashlogsign/logsign.dart';

final PageViewModel bluePage = PageViewModel(
    title: "Manage Your Task",
    body: "You can easily manage all of your daily tasks in DoMe for free",
    image: Center(
      child: Image.asset("assets/images/Page.png"),
    ),
    decoration: const PageDecoration(
        pageColor: Colors.black,
        bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)));

final PageViewModel orangePage = PageViewModel(
    title: "Create Daily Routine",
    body:
        "In Uptodo you can create your personalized routine to stay productive",
    image: Center(
      child: Image.asset("assets/images/Page2.png"),
    ),
    decoration: const PageDecoration(
        pageColor: Colors.black,
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)));

final PageViewModel customBodyPage = PageViewModel(
    title: "Optimize your tasks",
    body: "You can organize your daily tasks into separate categories",
    image: Center(
      child: Image.asset("assets/images/Page3.png"),
    ),
    decoration: const PageDecoration(
        pageColor: Colors.black,
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)));

Widget buildIntroScreen(BuildContext context) {
  return IntroductionScreen(
    pages: [bluePage, orangePage, customBodyPage],
    showSkipButton: true,
    skip: const Text(
      "Skip",
      style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 142, 121, 181)),
    ),
    next: const Text(
      "Next",
      style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 142, 121, 181)),
    ),
    done: const Text("Get Started",
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 142, 121, 181))),
    onDone: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LogSign()),
      );
    },
    onSkip: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LogSign()),
      );
    },
    globalBackgroundColor: Colors.black,
    dotsDecorator: DotsDecorator(
      size: const Size.square(10.0),
      activeSize: const Size(20.0, 10.0),
      activeColor: Color.fromARGB(255, 142, 121, 181),
      color: Colors.black26,
      spacing: const EdgeInsets.symmetric(horizontal: 3.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
  );
}
