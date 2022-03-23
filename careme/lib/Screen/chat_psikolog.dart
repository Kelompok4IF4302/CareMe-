// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

// ignore: camel_case_types
class rujukan_screen extends StatefulWidget {
  const rujukan_screen({Key? key}) : super(key: key);

  @override
  _DetailChatState createState() => _DetailChatState();
}

// ignore: camel_case_types
class _DetailChatState extends State<rujukan_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.indigo[900],
      // ignore: prefer_const_constructors

      appBar: AppBar(
        automaticallyImplyLeading: false,
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromRGBO(54, 98, 43, 100),
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const rujukan_screen();
                }));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18,
              ),
              color: Colors.grey,
            ),
            SizedBox(
                width: 40,
                height: 40,
                child: Stack(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage("assets/img/psikolog1.png"),
                        fit: BoxFit.contain,
                      )),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.greenAccent[400],
                          border: Border.all(color: Colors.white, width: 2)),
                    ),
                  ),
                ])),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: const Text(
                    "Dr. Diana",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "RobotoBold",
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: const Text(
                    "Available",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "RobotoRegular",
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                )
              ],
            )
          ],
        ),
        elevation: 0,
        //shadowColor: Colors.black,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.phone_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.videocam_outlined,
                    size: 30,
                  )),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              //alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Color.fromARGB(136, 255, 255, 255),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      //margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(198, 227, 119, 100)),
                      child: Row(children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.attach_file_rounded),
                          color: Colors.grey,
                        ),
                        const Text(
                          "Type Message...",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "RobotoMedium",
                              fontSize: 17),
                        ),
                      ])),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic_outlined,
                      size: 35,
                    ),
                    color: const Color.fromRGBO(198, 227, 119, 100),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}