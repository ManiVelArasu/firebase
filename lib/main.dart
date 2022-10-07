import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screen/loginscreen.dart';
import 'Screen/splashscreen.dart';
Future<void> main() async {
 // WidgetsFlutterBinding.ensureInitialized();
  //Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter LoginPage',
      home: Splash(),
      /*  home: HomePage(title: '',),*/
    );
  }
}

