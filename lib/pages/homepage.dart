// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:carbonbankapp/pages/analysis.dart';
import 'package:carbonbankapp/pages/help_screen.dart';
import 'package:carbonbankapp/pages/models/account_balance_card.dart';
import 'package:carbonbankapp/pages/models/loan_card.dart';
import 'package:carbonbankapp/pages/models/savings_balance_card.dart';
import 'package:carbonbankapp/pages/models/transactions_card.dart';
import 'package:carbonbankapp/pages/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),

      //app bar

      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0.9,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                //circular avatar

                CircleAvatar(
                  backgroundImage: AssetImage("assets/Ini.jpg"),
                ),

                SizedBox(width: 10),

                //text

                Text(
                  "Hello, Ini",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(width: 60),

            //buttons

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HelpScreen()));
              },
              child: Icon(
                Icons.help,
                color: Colors.grey.shade600,
                size: 26,
              ),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnalysisScreen()));
              }),
              child: Icon(
                Icons.analytics_outlined,
                color: Colors.grey.shade600,
                size: 26,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()));
              },
              child: Icon(
                Icons.notifications,
                color: Colors.grey.shade600,
                size: 26,
              ),
            )
          ],
        ),
      ),

      //body
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),

            //cards
            Container(
              height: 190,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  //account balance card
                  AccountBalanceCard(),
                  //loan card
                  LoanCard(),

                  //savings card
                  SavingsBalanceCard(),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                activeDotColor: Color(0xFF8533ff),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            //Quick actions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
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
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quick actions",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //split payement
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 65,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "lib/images/split-payments.png",
                                    color: Color(0xFFffaa80),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFffcce0),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Split Payements",
                                style: TextStyle(
                                  color: Color(0xFF00001a),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),

                          //buy airtime
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 65,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "lib/images/buy-airtime.png",
                                    color: Color(0xFFff8080),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFffcccc),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Buy Airtime",
                                style: TextStyle(
                                  color: Color(0xFF00001a),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),

                          //pay bills
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 65,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "lib/images/pay-bills.png",
                                    color: Color(0xFF00b33c),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFe6fff7),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Pay Bills",
                                style: TextStyle(
                                  color: Color(0xFF00001a),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),

                          //get loans
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 65,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "lib/images/get-loans.png",
                                    color: Color(0xFF99ccff),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFe6ffff),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Get Loans",
                                style: TextStyle(
                                  color: Color(0xFF00001a),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //Transactions
            TransactionCard(),
          ],
        ),
      ),
    );
  }
}

//10.210.139.12
