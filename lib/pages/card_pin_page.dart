import 'package:flutter/material.dart';

class CardPinPage extends StatefulWidget {
  const CardPinPage({super.key});

  @override
  State<CardPinPage> createState() => _CardPinPageState();
}

class _CardPinPageState extends State<CardPinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF5D2ECE),
          ),
          //replace with our own icon data.
        ),
        // ignore: prefer_const_constructors
        title: Text(
          'Block Card',
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 1, 17, 30),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 100,
              width: 180,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "lib/images/carbonlogo.png",
                    height: 40,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "lib/images/mastercard.png",
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('lib/images/black-pattern1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                '.... .... .... ',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 1, 17, 30),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '4050',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 1, 17, 30),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                //view card pin button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            'lib/images/eye.png',
                            color: Colors.yellow,
                            height: 15,
                          ),
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
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'View Card PIN',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF031B4A),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    ImageIcon(
                      AssetImage("lib/images/right-arrow.png"),
                      size: 15,
                      color: Color(0xFF5D2ECE),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //  Manage card button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          // ignore: sort_child_properties_last
                          child: Image.asset(
                            'lib/images/pin-code.png',
                            color: Colors.green,
                            height: 15,
                          ),
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
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Change Card PIN',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF031B4A),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    ImageIcon(
                      AssetImage("lib/images/right-arrow.png"),
                      size: 15,
                      color: Color(0xFF5D2ECE),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
