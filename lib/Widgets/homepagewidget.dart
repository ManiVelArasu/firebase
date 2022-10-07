import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';

import '../Auth/AuthService.dart';

Widget appBarWidget(GlobalKey<ScaffoldState> scaffoldKey){
  GoogleSignIn googleSignIn=GoogleSignIn();
  return     Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      Container(
        height:40,
        width: 70,
        child: InkWell(
          onTap: () async {
            scaffoldKey.currentState!.openDrawer();
          /*  await googleSignIn.signOut();
            await FirebaseAuth.instance.signOut();*/
          },
          child: CircleAvatar(
            radius:70,
            backgroundImage: NetworkImage(FirebaseAuth.instance.currentUser!.photoURL.toString()),
          ),
        )
      ),
      SizedBox(width: 20,),
      Container(
        margin: EdgeInsets.only(right:1 ),
        height:40,
        width: 30,
        child: Lottie.asset("assets/twitter.json",
  fit: BoxFit.fill
  ),
      ),
      SizedBox(width: 60,),
      Container(
        margin: EdgeInsets.only(right:1 ),
        height:40,
        width: 30,
        child: Lottie.asset("assets/star.json",
            fit: BoxFit.fill
        ),
      ),
      SizedBox(width: 10,),
    ],
  );
}