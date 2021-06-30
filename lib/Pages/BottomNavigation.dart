import 'package:airtel/Pages/Rupay.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:airtel/Pages/Profile.dart';
import 'package:airtel/Pages/Homepage.dart';
import 'package:airtel/Pages/Banking.dart';
import 'package:airtel/Pages/Explore.dart';
class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
int page=0;
GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: [
          Icon(Entypo.home),
          Icon(FontAwesome.bank),
          Icon(FontAwesome.rupee,color: Colors.red,size: 40.0,),
          Icon(Entypo.compass,size: 27,),
          Icon(FontAwesome.user_circle,size: 27)
        ],
        height: 60,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor:HexColor('#d91f2a'),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
   body: getPage(page),
    );
  }
getPage(int cpage)
{
  switch(cpage)
  {
    case 0:
      return HomePage();
    case 1:
      return BankingPage();
    case 2:
      return RupayPage();
    case 3:
       return ExplorePage();
    case 4:
      return ProfilePage();
  }
}

  }

