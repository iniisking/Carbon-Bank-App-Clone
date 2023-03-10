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
          image: AssetImage('lib/images/purple-pattern.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
