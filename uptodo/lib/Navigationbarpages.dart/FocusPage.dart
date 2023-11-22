import 'package:flutter/material.dart';

class Focus1 extends StatelessWidget {
  const Focus1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          "focus",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
    );
  }
}
