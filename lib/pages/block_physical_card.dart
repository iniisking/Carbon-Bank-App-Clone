// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BlockPhysicalCard extends StatefulWidget {
  const BlockPhysicalCard({super.key});

  @override
  State<BlockPhysicalCard> createState() => _BlockPhysicalCardState();
}

class _BlockPhysicalCardState extends State<BlockPhysicalCard> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF5D2ECE),
          ),
          //replace with our own icon data.
        ),
        // ignore: prefer_const_constructors
        title: Text(
          'Block Card',
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 1, 17, 30),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 100,
              width: 180,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "lib/images/carbonlogo.png",
                    height: 40,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "lib/images/mastercard.png",
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('lib/images/black-pattern1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                '.... .... .... ',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 1, 17, 30),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '4050',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 1, 17, 30),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 0.5,
                            blurRadius: 2,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(1, 1),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Image.asset(
                        'lib/images/block-card.png',
                        height: 15,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Block Card',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF031B4A),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Temporarily disable this card',
                          style: TextStyle(
                            color: Color(0xFF6B778C),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Switch(
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[300],
                    activeColor: Color(0xFF5D2ECE),
                    value: isOn,
                    onChanged: (bool value) {
                      setState(() {
                        isOn = value;
                      });
                    })
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 0.5,
                    blurRadius: 2,
                    blurStyle: BlurStyle.outer,
                    offset: Offset(1, 1),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Blocking your card will stop",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "lib/images/checkmark.png",
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'ATM Withdrawals',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "lib/images/checkmark.png",
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'POS Transactions',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "lib/images/checkmark.png",
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Online Transactions',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
