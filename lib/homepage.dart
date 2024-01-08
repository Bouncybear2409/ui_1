import 'package:flutter/material.dart';
import 'package:ui_ux/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: const Color.fromARGB(255, 247, 79, 219)),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.search,
                color: Color(0x8C1B153D),
              ),
              SizedBox(width: 12.0),
              Text(
                'Search Product',
                style: TextStyle(
                  color: Color(0x8C1B153D),
                  fontSize: 12,
                  fontFamily: 'Raleway',
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ), 
        body: const body(),
    );
  }
}