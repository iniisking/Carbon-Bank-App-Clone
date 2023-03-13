// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'dart:math';

import 'package:carbonbankapp/pages/block_physical_card.dart';
import 'package:carbonbankapp/pages/models/physical_card_back.dart';
import 'package:carbonbankapp/pages/models/physical_card_front.dart';
import 'package:flutter/material.dart';

class PhysicalCardPage extends StatefulWidget {
  const PhysicalCardPage({super.key});

  @override
  State<PhysicalCardPage> createState() => _PhysicalCardPageState();
}

class _PhysicalCardPageState extends State<PhysicalCardPage> {
  // declaring the isFront bool

  bool isFront = true;
  double angle = 0;
  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: angle),
                duration: Duration(seconds: 1),
                builder: (BuildContext context, double val, __) {
                  if (val >= (pi / 2)) {
                    isFront = false;
                  } else {
                    isFront = true;
                  }

                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(val),
                    child: Container(
                      height: 200,
                      width: 335,
                      child: isFront
                          ? PhysicalCardFront()
                          : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()..rotateY(pi),
                              child: PhysicalCardBack(),
                            ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                isFront
                    ? GestureDetector(
                        onTap: _flip,
                        child: Text(
                          "Show details",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF5D2ECE),
                              fontWeight: FontWeight.w600),
                        ))
                    : GestureDetector(
                        onTap: _flip,
                        child: Text(
                          "Hide details",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF5D2ECE),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                //block card button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlockPhysicalCard()),
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
                              'lib/images/block-card.png',
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
                // manage card button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            'lib/images/manage-card.png',
                            height: 15,
                            color: Colors.yellow,
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
                              'Card PIN and Limits',
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
