

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:googlefirebaselogin/Screen/profilepage.dart';

import 'Notification.dart';
import 'homepage.dart';
import 'message.dart';
import 'ourprodcut.dart';
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);
  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
 
  bool prfile=false;
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const OurProduct(),
    const ProfilePage(),
    const NotificationScreen(),
    const Message(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
            ),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 50,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        enableFeedback: false,
                        onTap: () {
                          setState(() {
                            pageIndex = 0;
                          });
                        },
                        child:
                        Container(
                            decoration: BoxDecoration(
                                color: pageIndex == 0 ?Colors.yellow:Colors.transparent,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child:Padding(
                              padding:EdgeInsets.all(10),
                              child: Icon(Icons.home)
                            )
                        )
                    ),
                  ],
                ),
              ),
              Container(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        enableFeedback: false,
                        onTap: () {
                          setState(() {
                            pageIndex = 1;
                          });
                        },
                        child:
                        Container(
                            decoration: BoxDecoration(
                                color: pageIndex == 1 ?Colors.yellow:Colors.transparent,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child:Padding(
                              padding:EdgeInsets.all(10),
                                child: Icon(Icons.search)
                            )
                        )
                    ),
                  ],
                ),),
              Container(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        enableFeedback: false,
                        onTap: () {
                          setState(() {
                            pageIndex = 2;
                          });
                        },
                        child:
                        Container(
                            decoration: BoxDecoration(
                                color: pageIndex == 2 ?Colors.yellow:Colors.transparent,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child:Padding(
                              padding:EdgeInsets.all(10),
                                child: Icon(Icons.mic_outlined)
                            )
                        )
                    ),
                  ],
                ),),
              Container(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        enableFeedback: false,
                        onTap: () {
                          setState(() {
                            pageIndex = 3;
                          });
                        },
                        child:
                        Container(
                            decoration: BoxDecoration(
                                color: pageIndex == 3 ?Colors.yellow:Colors.transparent,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child:Padding(
                              padding:EdgeInsets.all(10),
                                child: Icon(Icons.notifications)
                            )
                        )
                    ),
                  ],
                ),),
              Container(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        enableFeedback: false,
                        onTap: () {
                          setState(() {
                            pageIndex = 4;
                          });
                        },
                        child:
                        Container(
                            decoration: BoxDecoration(
                                color: pageIndex == 4 ?Colors.yellow:Colors.transparent,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child:Padding(
                                padding:EdgeInsets.all(10),
                                child: Icon(Icons.message)
                            )
                        )
                    ),
                  ],
                ),),
            ],
          )
      ),
    );
  }
}