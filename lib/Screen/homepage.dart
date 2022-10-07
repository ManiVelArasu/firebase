import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/homepagewidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10,),

            SizedBox(height: 10,),

          ],
        ),
      ),

    );
  }
}
