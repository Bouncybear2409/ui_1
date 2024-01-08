import 'package:flutter/material.dart';

class Slider extends StatelessWidget {
  const Slider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 15),
      child: Text(
        'Find your suitable product now.',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
