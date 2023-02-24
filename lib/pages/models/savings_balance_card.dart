// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class SavingsBalanceCard extends StatelessWidget {
  const SavingsBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Savings balance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Earn up to 15.5% per annum",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Invest where your money works as hard as you do.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/images/send_money.png",
                            color: Colors.blue,
                            height: 17,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Create plan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 5, 19, 43),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
