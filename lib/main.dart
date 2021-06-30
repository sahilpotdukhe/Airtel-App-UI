import 'package:airtel/Pages/Homepage.dart';
import 'package:airtel/Pages/Profile.dart';
import 'package:airtel/Pages/Splash.dart';
import 'package:airtel/Pages/StartPage.dart';
import 'package:flutter/material.dart';
import 'package:airtel/Pages/BottomNavigation.dart';
import 'package:airtel/Pages/Banking.dart';
import 'package:airtel/Pages/Profile.dart';
import 'package:airtel/Pages/Explore.dart';
import 'package:airtel/Pages/Rupay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>SplashScreen(),
        //'/home':(context)=>HomePage(),
        '/btmnavigate':(context)=>BottomNavigation(),
        //'/banking':(context)=>BankingPage(),
        // '/profile':(context)=>ProfilePage(),
        //'/explore':(context)=>ExplorePage(),
        // '/rupay' :(context)=>RupayPage(),
        '/startpage':(context)=>StartPage(),
      },
    );
  }
}


