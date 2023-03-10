import 'package:flutter/material.dart';

class VirtualCardBack extends StatefulWidget {
  const VirtualCardBack({super.key});

  @override
  State<VirtualCardBack> createState() => _VirtualCardFrontState();
}

class _VirtualCardFrontState extends State<VirtualCardBack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
              const Icon(
                Icons.copy,
                color: Colors.white,
                size: 26,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Card Number",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const Text(
            "5489 3406 057 6653",
            style: TextStyle(
              fontFamily: 'OCR-A',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Expiration",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const Text(
            "03/25",
            style: TextStyle(
              fontFamily: 'OCR-A',
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: prefer_const_literals_to_create_immutables
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "cvv",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "116",
                    // ignore: prefer_const_constructors
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
        image: const DecorationImage(
          image: AssetImage('lib/images/purple-pattern.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
