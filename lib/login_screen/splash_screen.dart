


import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../constant.dart';
import 'login_singup.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);


  @override
  SplashScreenState createState() => SplashScreenState();

}

class SplashScreenState extends State<SplashScreen>{


  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => const LoginScreen())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWrapper.builder(
          Stack(
            fit: StackFit.expand,
            children: [
              //====
              Image.asset(
                "images/background@300x-8.png",
                fit: BoxFit.cover,
              ),
              //============
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Image.asset(
                  "images/logo@300x-8.png",
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(bottom: 30, right: 26),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AutoSizeText(
                    "2018-2021 Buystocklot.com All right Reserved",
                    style: TextStyle(fontSize: textFontSize18, color: textWhiteColor),
                  ),
                ),
              ),
              //============
            ],
          ),
          maxWidth: 1500,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const  ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ]),
    );
  }
  
}