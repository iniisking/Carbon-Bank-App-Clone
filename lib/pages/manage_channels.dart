// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ManageChannels extends StatefulWidget {
  const ManageChannels({super.key});

  @override
  State<ManageChannels> createState() => _ManageChannelsState();
}

class _ManageChannelsState extends State<ManageChannels> {
  bool posIsOn = false;
  bool atmIsOn = false;
  bool onlinePaymentIsOn = false;
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
          'Manage Channels',
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 1, 17, 30),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //POS payment button
              Text(
                "POS Payment",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey[300],
                  activeColor: Color(0xFF5D2ECE),
                  value: posIsOn,
                  onChanged: (bool value) {
                    setState(() {
                      posIsOn = value;
                    });
                  })
            ],
          ),
          SizedBox(
            height: 15,
          ),

          //ATM withdrawal button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ATM Withdrawal",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey[300],
                  activeColor: Color(0xFF5D2ECE),
                  value: atmIsOn,
                  onChanged: (bool value) {
                    setState(() {
                      atmIsOn = value;
                    });
                  })
            ],
          ),
          SizedBox(
            height: 15,
          ),

          //Online payments button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Online Payments",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey[300],
                  activeColor: Color(0xFF5D2ECE),
                  value: onlinePaymentIsOn,
                  onChanged: (bool value) {
                    setState(() {
                      onlinePaymentIsOn = value;
                    });
                  })
            ],
          ),
        ]),
      ),
    );
  }
}
