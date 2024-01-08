import 'package:flutter/material.dart';
import 'package:ui_ux/detail_item.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.image,
    required this.name,
    required this.category,
    required this.cost,
  }) : super(key: key);

  final String image;
  final String name;
  final String category;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  image: image,
                  name: name,
                  category: category,
                  cost: cost,
                ),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 236, 243, 236),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  width: 165,
                  height: 100,
                  image: AssetImage(image),
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  category,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  cost,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
