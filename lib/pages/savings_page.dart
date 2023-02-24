// ignore_for_file: prefer_const_constructors

import 'package:carbonbankapp/pages/models/tabs/active_tab.dart';
import 'package:carbonbankapp/pages/models/tabs/completed_tab.dart';
import 'package:carbonbankapp/pages/models/tabs/pending_tab.dart';
import 'package:flutter/material.dart';

class SavingsPage extends StatelessWidget {
  const SavingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Savings',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 1, 17, 30),
                        fontWeight: FontWeight.w500),
                  ),
                  Image.asset(
                    "lib/images/setting1.png",
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TabBar(
                labelStyle: TextStyle(fontSize: 16),
                indicatorWeight: 5,
                indicatorColor: Color(0xFF5D2ECE),
                labelColor: Color(0xFF5D2ECE),
                unselectedLabelColor: Color(0xFF6B778C),
// ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    text: "Active",
                  ),
                  Tab(
                    text: "Pending",
                  ),
                  Tab(
                    text: "Completed",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //active tab
                    ActiveTab(),

                    //pending tab
                    PendingTab(),
                    //completed tab
                    CompletedTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Color(0xFF4300C2),
          ),
        ),
      ),
    );
  }
}
