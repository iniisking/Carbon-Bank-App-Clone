import 'package:flutter/material.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Your loan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Need cash instantly?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Apply for a low-interest loan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
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
                            "Apply for a loan",
                            style: TextStyle(color: Colors.white, fontSize: 14),
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
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
