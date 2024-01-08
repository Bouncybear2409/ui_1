import 'package:flutter/material.dart';
import 'package:ui_ux/homepage.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(image),
                    width: 400,
                    height: 350,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '($category)',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      cost,
                      style: const TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 55, 14, 218)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Colors',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 224, 222, 214),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.92),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.amber,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text('Chalk Pink')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 224, 222, 214),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.92),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 129, 128, 127),
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text('Royal Gray')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 224, 222, 214),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.92),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 10, 78, 3),
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text('Eucalyptus')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                              color: Color.fromARGB(255, 83, 12, 206)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Reviews'),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 50, top: 10, bottom: 20),
                      child: Text(
                        'Call it a treasure chest or a mini portable world, handbags are indispensable in daily life',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 111, 38, 230),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.92),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
