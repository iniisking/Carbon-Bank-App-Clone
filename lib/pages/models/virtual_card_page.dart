// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:carbonbankapp/pages/models/virtual_card_front.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../virtual_card_back.dart';

class VirtualCardPage extends StatefulWidget {
  const VirtualCardPage({super.key});

  @override
  State<VirtualCardPage> createState() => _VirtualCardPageState();
}

class _VirtualCardPageState extends State<VirtualCardPage> {
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
                      height: 235,
                      width: 335,
                      child: isFront
                          ? VirtualCardFront()
                          : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()..rotateY(pi),
                              child: VirtualCardBack(),
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
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                      ))
            ]),
          )
        ],
      ),
    );
  }
}
