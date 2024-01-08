import 'package:flutter/material.dart';
import 'package:ui_ux/category.dart';
import 'package:ui_ux/item.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          // const category(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 500,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 18,
              crossAxisSpacing: 16,
              childAspectRatio: 0.98,
              children: const [
                Item(
                  image: 'assets/images/Bag.png',
                  name: 'Mulberry Clutch',
                  category: 'Series 7',
                  cost: '\$799',
                ),
                Item(
                  image: 'assets/images/Bag_1.png',
                  name: 'Mulberry Clutch',
                  category: 'Series 7',
                  cost: '\$799',
                ),
                Item(
                  image: 'assets/images/Bag_2.png',
                  name: 'Mulberry Clutch',
                  category: 'Series 7',
                  cost: '\$799',
                ),
                Item(
                  image: 'assets/images/Bag_3.png',
                  name: 'Mulberry Clutch',
                  category: 'Series 7',
                  cost: '\$799',
                ),
                Item(
                  image: 'assets/images/Bag.png',
                  name: 'Mulberry Clutch',
                  category: 'Series 7',
                  cost: '\$799',
                ),
                Item(
                  image: 'assets/images/Bag_1.png',
                  name: 'Mulberry Clutch',
                  category: 'Series 7',
                  cost: '\$799',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
