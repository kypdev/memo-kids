import 'package:flutter/material.dart';
import 'package:memo_kids/views/login.dart';

import 'loader.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    new Future.delayed(
//      const Duration(seconds: 3),
//        () => Navigator.push(
//          context,
//          MaterialPageRoute(builder: (context) => Login()),
//        )
//    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/bg.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),

          Center(
            child: Loader(),
          )
        ],
      ),

    );
  }
}
