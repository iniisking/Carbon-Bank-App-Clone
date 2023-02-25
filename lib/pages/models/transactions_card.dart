// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatefulWidget {
  const TransactionCard({super.key});

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  currency(context) {
    Locale locale = Localizations.localeOf(context);

    var format =
        NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
    return format;
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Color(0xFF4300C2),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //supposed stream
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Image of transaction party
                      Container(
                        height: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("lib/images/mtn.jpg"),
                        ),
                      ),
                      //description and date
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Bill Payment For Mtn Dat...",
                            style: TextStyle(
                              color: Color(0xFF00001a),
                              fontSize: 17.5,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "July 08, 01:52 AM",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                      //amount
                      Text(
                        "-${currency(context).currencySymbol}500",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFF00001a),
                          fontSize: 19.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  //second stream
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Image of transaction party
                      Container(
                        height: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("lib/images/kuda.png"),
                        ),
                      ),
                      //description and date
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Transfer From IniOluw...",
                            style: TextStyle(
                              color: Color(0xFF00001a),
                              fontSize: 17.5,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "July 08, 01:07 AM",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                      //amount
                      Text(
                        "${currency(context).currencySymbol}4,500",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFF00001a),
                          fontSize: 19.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  //third stream
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Image of transaction party
                      Container(
                        height: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("lib/images/mtn.jpg"),
                        ),
                      ),
                      //description and date
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Bill Payment For Mtn Dat...",
                            style: TextStyle(
                              color: Color(0xFF00001a),
                              fontSize: 17.5,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "July 08, 01:52 AM",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                      //amount
                      Text(
                        "-${currency(context).currencySymbol}500",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFF00001a),
                          fontSize: 19.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  //fourth stream
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Image of transaction party
                      Container(
                        height: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("lib/images/mtn.jpg"),
                        ),
                      ),
                      //description and date
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Bill Payment For Mtn Dat...",
                            style: TextStyle(
                              color: Color(0xFF00001a),
                              fontSize: 17.5,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "July 08, 01:52 AM",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                      //amount
                      Text(
                        "-${currency(context).currencySymbol}1,000",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFF00001a),
                          fontSize: 19.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
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
      ),
    );
  }
}
