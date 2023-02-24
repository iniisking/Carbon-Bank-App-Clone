// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class AccountsPageTools extends StatefulWidget {
  final icon;
  final String heading;
  const AccountsPageTools({
    super.key,
    required this.heading,
    required this.icon,
  });

  @override
  State<AccountsPageTools> createState() => _AccountsPageToolsState();
}

class _AccountsPageToolsState extends State<AccountsPageTools> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              widget.icon,
              SizedBox(
                width: 15,
              ),
              Text(
                widget.heading,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 1, 17, 30),
                ),
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
    );
  }
}
