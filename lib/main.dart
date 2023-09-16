import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_app/utils/constant.dart';
import 'package:whatsapp_app/view/home_page.dart';
import 'package:whatsapp_app/view/login_page.dart';
import 'package:whatsapp_app/view/otp_page.dart';
import 'package:whatsapp_app/view/splash_screen.dart';

void main() => runApp(WhatsApp());

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      initialRoute: '/',
      routes: {
        '/':(context) => SplashScreen(),
        home:(context) => HomePage(),
        login:(context) => LoginPage(),
        otp:(context) => OTP(),
      },
    );
  }
}
