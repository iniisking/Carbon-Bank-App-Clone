// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PhysicalCardBack extends StatefulWidget {
  const PhysicalCardBack({super.key});

  @override
  State<PhysicalCardBack> createState() => _PhysicalCardBackState();
}

class _PhysicalCardBackState extends State<PhysicalCardBack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      // ignore: sort_child_properties_last
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "lib/images/credit card chip3.png",
                height: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.copy,
                color: Colors.white,
                size: 26,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Card Number",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Text(
            "5239 1400 000 4050",
            style: TextStyle(
              fontFamily: 'OCR-A',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Expiration",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
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
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: prefer_const_literals_to_create_immutables
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "cvv",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "199",
                    style: TextStyle(
                      fontFamily: 'OCR-A',
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              Image.asset(
                "lib/images/mastercard.png",
                height: 60,
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/images/black-pattern1.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
