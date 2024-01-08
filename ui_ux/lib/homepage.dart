import 'package:flutter/material.dart';
import 'package:ui_ux/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 220,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/Menu.png'),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 242, 246, 242),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Product',
                          icon: Icon(Icons.search),
                          hintStyle: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 20, left: 15, right: 40),
                child: Text(
                  'Find your suitable \nproduct now.',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const TabBar(
                tabs: [
                  Tab(
                    text: 'Hand Bags',
                  ),
                  Tab(
                    text: 'Watch',
                  ),
                  Tab(
                    text: 'Books',
                  ),
                ],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: const <Widget>[
            Center(
              child: body(),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
