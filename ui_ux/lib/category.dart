import 'package:flutter/material.dart';

class category extends StatelessWidget {
  const category({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              'Hand Bags',
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(205, 42, 42, 238),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              'Watch',
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              'Books',
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              'Glasses',
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              'Clothes',
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(
              'Pants',
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
