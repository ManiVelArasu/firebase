import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:googlefirebaselogin/Screen/homepage.dart';

import '../Widgets/homepagewidget.dart';
import 'bottomnavigation.dart';


class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
              backgroundColor: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 40),
                        height: 100,
                        width:100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 2,color: Colors.white30,),
                          color: Colors.white,
                        ),
                        child:CircleAvatar(
                           backgroundImage:NetworkImage(FirebaseAuth.instance.currentUser!.photoURL.toString()),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 60,
                        width:60,
                       child: Icon(Icons.info_outlined),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text("RMVA",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),

                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text("@RMVA",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),

                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text("200followers"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("200following"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ListTile(
                    //leading:  Icon(Icons.person_pin,color:Colors.black12,size: 40,),
                    //trailing: Text("Twitter Circle",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    title: Row(
                      children: [
                        Icon(Icons.person,color:Colors.black12,size: 40,),
                        SizedBox(width: 16,),
                        Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ListTile(
                    //leading:  Icon(Icons.person_pin,color:Colors.black12,size: 40,),
                    //trailing: Text("Twitter Circle",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    title: Row(
                      children: [
                        Icon(Icons.topic,color:Colors.black12,size: 40,),
                        SizedBox(width: 16,),
                        Text("Topics",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ListTile(
                    //leading:  Icon(Icons.person_pin,color:Colors.black12,size: 40,),
                    //trailing: Text("Twitter Circle",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    title: Row(
                      children: [
                        Icon(Icons.bookmark,color:Colors.black12,size: 40,),
                        SizedBox(width: 16,),
                        Text("BookMarks",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ListTile(
                    //leading:  Icon(Icons.person_pin,color:Colors.black12,size: 40,),
                    //trailing: Text("Twitter Circle",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    title: Row(
                      children: [
                        Icon(Icons.list_alt,color:Colors.black12,size: 40,),
                        SizedBox(width: 16,),
                        Text("List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    //leading:  Icon(Icons.person_pin,color:Colors.black12,size: 40,),
                    //trailing: Text("Twitter Circle",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
title: Row(
  children: [
    Icon(Icons.person_pin,color:Colors.black12,size: 40,),
                    SizedBox(width: 16,),
                    Text("Twitter Circle",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
  ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    height: 1,
                    color: Colors.black,
                  ),
                 /* Divider(),
                  ListTile(
                    leading: Text("Share",

                    ),
                    trailing: Icon(Icons.share,color:Colors.white60,),
                  ),
                  Divider(),
                  ListTile(
                    leading: Text("SignOut",

                    ),
                    trailing: Icon(Icons.person,color:Colors.white60,),
                    onTap: ()async{              },
                  ),
                  Divider(),
                  ListTile(
                    leading: Text("Logout",

                    ),
                    trailing: Icon(Icons.logout_outlined,color:Colors.white60,),
                    onTap: (){
                    },
                  ),
                  Divider(),*/
                ],
              )
          ),
          body: Column(
            children: [
              SizedBox(height: 10,),
              appBarWidget(_scaffoldKey),
              SizedBox(height: 10,),
              Container(
                height: 1,
                color: Colors.black,
              ),
              Expanded(
                  child: BottomNavigationScreen()),
            ],
          ),
        )
    );
  }
}
