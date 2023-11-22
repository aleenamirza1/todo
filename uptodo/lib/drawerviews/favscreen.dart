import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Favourites",
        style: TextStyle(fontSize: 35, color: Colors.white),
      ),
    );
  }
}
