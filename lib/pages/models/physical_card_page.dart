// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class PhysicalCardPage extends StatefulWidget {
  const PhysicalCardPage({super.key});

  @override
  State<PhysicalCardPage> createState() => _PhysicalCardPageState();
}

class _PhysicalCardPageState extends State<PhysicalCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "lib/images/credit card chip3.png",
                      height: 50,
                      color: Colors.white,
                    ),
                    Image.asset(
                      "lib/images/mastercard.png",
                      height: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "5239 1400 000 4050",
                    style: TextStyle(
                      fontFamily: 'Kredit',
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 30,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "JJ Thompson",
                  style: TextStyle(
                    fontFamily: 'Kredit',
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "03/25",
                  style: TextStyle(
                      fontFamily: 'Kredit',
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 28,
                      letterSpacing: 1),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
          )
        ],
      ),
    );
  }
}
