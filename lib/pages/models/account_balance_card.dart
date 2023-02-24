// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AccountBalanceCard extends StatefulWidget {
  const AccountBalanceCard({super.key});

  @override
  State<AccountBalanceCard> createState() => _AccountBalanceCardState();
}

class _AccountBalanceCardState extends State<AccountBalanceCard> {
  bool _isObscure = true;
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Account balance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),

              const SizedBox(
                height: 12,
              ),

              //account balance
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  _isObscure
                      ? Text(
                          "*****",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Text(
                          "${currency(context).currencySymbol}10,500.89",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      child: _isObscure
                          ? Icon(
                              Icons.visibility,
                              color: Colors.white,
                              size: 23,
                            )
                          : Icon(
                              Icons.visibility_off,
                              color: Colors.white,
                              size: 23,
                            )),
                ],
              ),

              SizedBox(
                height: 19,
              ),

              // account number
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Account no: 8643664597",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.copy,
                    size: 13,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),
              //add money/send money
              Row(
                children: [
                  Container(
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/images/add_money.png",
                            color: Colors.green,
                            height: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Add money",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 5, 19, 43),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  //send money

                  Container(
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/images/send_money.png",
                            color: Colors.blue,
                            height: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Send money",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 5, 19, 43),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xFF5D2ECE),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
