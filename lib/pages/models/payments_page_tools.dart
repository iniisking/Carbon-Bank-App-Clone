// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class PaymentsTools extends StatefulWidget {
  const PaymentsTools({
    super.key,
    required this.heading,
    required this.subHeading,
    required this.logo,
  });
  final String heading;
  final String subHeading;
  final String logo;

  @override
  State<PaymentsTools> createState() => PaymentsToolsState();
}

class PaymentsToolsState extends State<PaymentsTools> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFF2EEFB),
            child: Image.asset(
              widget.logo,
              height: 25,
              color: Color(0xFF5D2ECE),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.heading,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF031B4A),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.subHeading,
                style: TextStyle(
                  color: Color(0xFF6B778C),
                ),
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
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
