import 'dart:async';

import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 350,
          ),
          Center(
            child: Image(
              image: AssetImage("assets/image/logo.png"),
              width: 120,
              height: 120,
            ),
          ),
          SizedBox(
            height: 300,
          ),
          Text(
            "From",
            style: TextStyle(
              color: Color(0xff70808f),
            ),
          ),
          Text(
            "Meta",
            style: TextStyle(
              color: Color(0xff45D880),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
