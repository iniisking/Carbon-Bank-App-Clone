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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "lib/images/credit card chip3.png",
                        height: 40,
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
                        fontFamily: 'OCR-A',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "JJ THOMPSON",
                    style: TextStyle(
                      fontFamily: 'OCR-A',
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    "03/25",
                    style: TextStyle(
                      fontFamily: 'OCR-A',
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/black-pattern1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
