// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "You don't have any active savings",
            style: TextStyle(
              color: Color(0xFF6B778C),
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'lib/images/success.png',
            height: 70,
            color: Color(0xFF5D2ECE),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'When you save, the details of your',
            style: TextStyle(
              color: Color(0xFF6B778C),
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'savings will appear here.',
            style: TextStyle(
              color: Color(0xFF6B778C),
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: Text(
              'Save now',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF5D2ECE),
              borderRadius: BorderRadius.circular(8),
            ),
          )
        ],
      ),
    );
  }
}
