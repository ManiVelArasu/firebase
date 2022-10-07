import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:googlefirebaselogin/Screen/homepage.dart';
import 'package:lottie/lottie.dart';

import '../Auth/AuthService.dart';
import '../Component/background.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}
class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 20
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Username"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Password"
                ),
                obscureText: true,
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                "Forgot your password?",
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF2661FA)
                ),
              ),
            ),

            SizedBox(height: size.height * 0.05),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage()));
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.6,
                    padding: const EdgeInsets.all(10), decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ]
                    )
                ),

                    child:Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Lottie.asset("assets/login.json",
                                fit: BoxFit.fill
                            ),
                          ),
                          SizedBox(width: 8,),
                          Text("Login",

                          )
                        ],
                      ),
                    )

                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: InkWell(
                onTap: (){
                  AuthService().signInWithGoogle();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.6,
                  padding: const EdgeInsets.all(10), decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ]
                    )
                ),

                  child:Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Lottie.asset("assets/google.json",
                              fit: BoxFit.fill
                          ),
                        ),
                        SizedBox(width: 8,),
                        Text("Sign in with Google",

                        )
                      ],
                    ),
                  )

                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
              /*  onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()))
                },*/
                child: Text(
                  "Don't Have an Account? Sign up",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
