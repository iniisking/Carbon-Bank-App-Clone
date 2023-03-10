import 'package:flutter/material.dart';

import 'models/physical_card_page.dart';
import 'models/virtual_card_page.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 10,
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: const Text(
                  'Cards',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 1, 17, 30),
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TabBar(
                labelStyle: TextStyle(fontSize: 16),
                indicatorWeight: 5,
                indicatorColor: Color(0xFF5D2ECE),
                labelColor: Color(0xFF5D2ECE),
                unselectedLabelColor: Color(0xFF6B778C),
// ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    text: "Physical Card",
                  ),
                  Tab(
                    text: "Virtual Card",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: prefer_const_constructors
              Expanded(
                // ignore: prefer_const_constructors
                child: TabBarView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //physical card
                    const PhysicalCardPage(),

                    //virtual card
                    const VirtualCardPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
