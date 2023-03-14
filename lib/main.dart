// ignore_for_file: prefer_const_constructors

import 'package:carbonbankapp/pages/card_pin_page.dart';
import 'package:carbonbankapp/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Lato'),
      debugShowCheckedModeBanner: false,
      home: CardPinPage(),
    );
  }
}
