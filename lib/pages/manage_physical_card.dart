// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:carbonbankapp/pages/card_pin_page.dart';
import 'package:flutter/material.dart';

import 'manage_channels.dart';

class ManagePhysicalCard extends StatefulWidget {
  const ManagePhysicalCard({super.key});

  @override
  State<ManagePhysicalCard> createState() => _ManagePhysicalCardState();
}

class _ManagePhysicalCardState extends State<ManagePhysicalCard> {
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
          'Manage Card',
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
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                //card pin button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CardPinPage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'lib/images/padlock.png',
                              color: Colors.green,
                              height: 15,
                            ),
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
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Card PIN',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF031B4A),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'View & Reset Card PIN',
                                style: TextStyle(
                                  color: Color(0xFF6B778C),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ImageIcon(
                        AssetImage("lib/images/right-arrow.png"),
                        size: 15,
                        color: Color(0xFF5D2ECE),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //  Manage card button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const ManageChannels()),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            // ignore: sort_child_properties_last
                            child: Image.asset(
                              'lib/images/manage-card.png',
                              color: Colors.yellow,
                              height: 15,
                            ),
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
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Manage Card',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF031B4A),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Choose where your card works',
                                style: TextStyle(
                                  color: Color(0xFF6B778C),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ImageIcon(
                        AssetImage("lib/images/right-arrow.png"),
                        size: 15,
                        color: Color(0xFF5D2ECE),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
