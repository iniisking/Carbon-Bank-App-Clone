// ignore_for_file: prefer_const_constructors

import 'package:carbonbankapp/pages/accounts_page.dart';
import 'package:carbonbankapp/pages/cards_page.dart';
import 'package:carbonbankapp/pages/payments_page.dart';
import 'package:carbonbankapp/pages/savings_page.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    PaymentsPage(),
    CardsPage(),
    SavingsPage(),
    AccountsPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: Color(0xFF5D2ECE),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: ImageIcon(
              AssetImage("lib/images/home2.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: "Payments",
            icon: ImageIcon(
              AssetImage("lib/images/transfer3.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: "Cards",
            icon: ImageIcon(
              AssetImage("lib/images/cards2.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: "Savings",
            icon: ImageIcon(
              AssetImage("lib/images/vault3.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: "Accounts",
            icon: ImageIcon(
              AssetImage("lib/images/user2.png"),
            ),
          ),
        ],
      ),
    );
  }
}
