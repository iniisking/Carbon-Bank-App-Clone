// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PhysicalCardFront extends StatefulWidget {
  const PhysicalCardFront({super.key});

  @override
  State<PhysicalCardFront> createState() => _PhyisicalCardState();
}

class _PhyisicalCardState extends State<PhysicalCardFront> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      // ignore: sort_child_properties_last
      child: Column(children: [
        // ignore: prefer_const_constructors
        SizedBox(
          height: 20,
        ),
        Image.asset(
          "lib/images/carbonlogo.png",
          height: 120,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "lib/images/mastercard.png",
              height: 60,
            ),
          ],
        ),
      ]),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('lib/images/black-pattern1.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
