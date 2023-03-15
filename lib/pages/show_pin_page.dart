// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShowPinPage extends StatefulWidget {
  const ShowPinPage({super.key});

  @override
  State<ShowPinPage> createState() => _ShowPinPageState();
}

class _ShowPinPageState extends State<ShowPinPage> {
  bool obscureText = true;
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
          'Card PIN',
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 1, 17, 30),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "The four numbers below are your virtual card PIN. Please keep it safe.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Use your card PIN for online transactions",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: 50,
                // ignore: sort_child_properties_last
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(),
                      obscureText
                          ? Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: Text(
                                "....",
                                style: TextStyle(
                                  letterSpacing: 3,
                                  fontSize: 43,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            )
                          : Text(
                              "1573",
                              style: TextStyle(
                                letterSpacing: 2.5,
                                fontSize: 16,
                              ),
                            ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: obscureText
                            ? Icon(
                                Icons.visibility,
                                color: Colors.grey[600],
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: Colors.grey[600],
                              ),
                      )
                    ]),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(
              height: 500,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                // ignore: sort_child_properties_last
                child: Text(
                  "Okay",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF5D2ECE),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
