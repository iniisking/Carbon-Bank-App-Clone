import 'package:flutter/material.dart';

class VirtualCardFront extends StatefulWidget {
  const VirtualCardFront({super.key});

  @override
  State<VirtualCardFront> createState() => _VirtualCardFrontState();
}

class _VirtualCardFrontState extends State<VirtualCardFront> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      // ignore: sort_child_properties_last
      child: Column(children: [
        // ignore: prefer_const_constructors
        SizedBox(
          height: 20,
        ),
        Image.asset(
          "lib/images/carbonlogo.png",
          height: 100,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ignore: prefer_const_constructors
            Text(
              "OWONIKOKO PETERS M.",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontFamily: 'OCR-A',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            Image.asset(
              "lib/images/mastercard.png",
              height: 35,
            ),
          ],
        ),
      ]),
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
