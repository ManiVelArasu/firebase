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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      Container(
                        height: 100,
                        width:100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 2,color: Colors.white30,),
                          color: Colors.white,
                        ),
                        child:CircleAvatar(
                          // backgroundImage:NetworkImage(FirebaseAuth.instance.currentUser!.photoURL.toString()),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    title: Text("Profile",

                    ),
                    trailing: Icon(Icons.person,color:Colors.black,),
                  ),
                  ListTile(
                    title: Text("Topics",

                    ),
                    trailing: Icon(Icons.topic,color:Colors.black,),
                  ),
                  Divider(),
                  ListTile(
                    leading: Text("Bookmarks",

                    ),
                    trailing: Icon(Icons.bookmark,color:Colors.black,),
                  ),
                  Divider(),
                  ListTile(
                    leading: Text("List",

                    ),
                    trailing: Icon(Icons.list_alt_outlined,color:Colors.black,),
                  ),
                  Divider(),
                  ListTile(
                    leading: Text("Twitter Circle",

                    ),
                    trailing: Icon(Icons.person_remove_alt_1_sharp,color:Colors.black,),
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
