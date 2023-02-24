// ignore_for_file: prefer_const_constructors

import 'package:carbonbankapp/pages/models/payments_page_tools.dart';
import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Payments",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 1, 17, 30),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            PaymentsTools(
              heading: 'Fund Account',
              subHeading: 'Add money to your Carbon Account',
              logo: 'lib/images/wallet.png',
            ),
            SizedBox(
              height: 25,
            ),
            PaymentsTools(
              heading: 'Send Money',
              subHeading: 'Send money to other accounts for free',
              logo: 'lib/images/transfer.png',
            ),
            SizedBox(
              height: 25,
            ),
            PaymentsTools(
              heading: 'Airtime/Data',
              subHeading: 'Purchase airtime and mobile data',
              logo: 'lib/images/vibration.png',
            ),
            SizedBox(
              height: 25,
            ),
            PaymentsTools(
              heading: 'Pay a bill',
              subHeading: 'Pay bills easily from the Carbon app',
              logo: 'lib/images/television.png',
            ),
            SizedBox(
              height: 25,
            ),
            PaymentsTools(
              heading: 'Recurring payments',
              subHeading: 'Manage your recurring payments',
              logo: 'lib/images/recurring-payments.png',
            ),
            SizedBox(
              height: 25,
            ),
            PaymentsTools(
              heading: 'Saved payments',
              subHeading: 'Pay an already saved payments',
              logo: 'lib/images/saved-payments.png',
            ),
          ],
        ),
      ),
    );
  }
}
