import 'dart:async';
import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'package:animate_do/animate_do.dart';
import 'package:airtel/Pages/BottomNavigation.dart';
import 'package:airtel/Pages/StartPage.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
        ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext Context)=>StartPage()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      body: ZoomIn(
        duration:Duration(seconds: 3) ,
         animate: true,
         child:Image.asset(
            'assets/Airtelsplash.png',
            fit :BoxFit.cover,
           height: double.infinity,
           width: double.infinity,
        ),
      )
    );
  }
}
