// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:carbonbankapp/pages/models/accounts_page_tools.dart';
import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 40, 0, 15),
              child: Text(
                "Account",
                style: const TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 1, 17, 30),
                    fontWeight: FontWeight.w500),
              ),
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/luffy.png"),
                        radius: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kaizoku Luffy",
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 1, 17, 30),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Personal details',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF6B778C),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              'Level 2',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 254, 20, 4),
                                  fontWeight: FontWeight.w500),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 179, 174),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ImageIcon(
                    AssetImage("lib/images/right-arrow.png"),
                    size: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            AccountsPageTools(
                heading: 'Upgrade account',
                icon: Icon(
                  Icons.arrow_upward,
                  color: Colors.red,
                  size: 18,
                )),
            SizedBox(
              height: 7,
            ),
            AccountsPageTools(
              heading: 'Request statement',
              icon: Image.asset(
                "lib/images/request-statement.png",
                height: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            AccountsPageTools(
              heading: 'Support',
              icon: Image.asset(
                "lib/images/support.png",
                height: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            AccountsPageTools(
              heading: 'Cards and banks',
              icon: Image.asset(
                "lib/images/cards-and-banks.png",
                height: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            AccountsPageTools(
              heading: 'Credit Report',
              icon: Image.asset(
                "lib/images/credit-report.png",
                height: 18,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            AccountsPageTools(
              heading: 'Security settings',
              icon: Image.asset(
                "lib/images/security-settings.png",
                height: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            AccountsPageTools(
              heading: 'Account limits',
              icon: Image.asset(
                "lib/images/account-limits.png",
                height: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            AccountsPageTools(
              heading: 'Carbon Express',
              icon: Image.asset(
                "lib/images/carbon-express.png",
                height: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            AccountsPageTools(
              heading: 'Refer a friend',
              icon: Image.asset(
                "lib/images/refer-a-friend.png",
                height: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
