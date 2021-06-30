import 'package:airtel/Pages/Profile.dart';
import 'package:airtel/Pages/Rupay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:ListView(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        children: [
          Stack(
            children: [
              Column(
                children: [
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      height: 270,
                      color: Colors.lime[900],
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0.0, 29.0, 0.0, 0.0),
                            height:45.0,
                            color: HexColor('#786e3a'),
                            child: Row(
                              children: [
                                Image.asset('assets/apbar1.jpg'),
                                SizedBox(width: 195),
                                IconButton(
                                    icon: Icon(
                                      Icons.notifications_none,
                                      color: Colors.white,
                                      size: 30.0,),
                                    onPressed: () {},
                                ),
                                IconButton(
                                    icon: Icon(
                                      Icons.headset_mic_outlined,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.translate_outlined,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              FlatButton(
                                child: Text('GOLD',
                                    style:TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    )),
                                      onPressed: () {},
                              ),
                              SizedBox(width: 100.0,),
                              RaisedButton(
                                    onPressed: () {},
                                color: HexColor('#786e3a'),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0)
                                ),
                                child: Text('Discover airtelThanks >',
                                    style:TextStyle(
                                      color: Colors.white,
                                    )
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 45.0,
                left: 20.0,
                child: Container(
                  // alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.fromLTRB(0.0,85.0, 0.0, 0.0),
                  height: 210.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                        )
                      ]
                  ),
                  child:Column(
                    children: [
                      Align(
                        alignment: Alignment(-0.86,0),
                        child:Text('Prepaid | 7447332096',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height:12.0),
                      Row(
                        children: [
                          SizedBox(width: 10.0),
                          CircularStepProgressIndicator(
                            child:Align(
                              child:Text('720.0\n MB',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            height: 85.0,
                            width: 85.0,
                            totalSteps: 1024,
                            currentStep: 720,
                            stepSize: 4,
                            selectedColor: HexColor('#5b5869'),
                            unselectedColor: HexColor('#efefef'),
                          ),
                          SizedBox(width: 30.0),
                          CircularStepProgressIndicator(
                            child:Align(
                              child:Text('  28\ndays',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            height: 85.0,
                            width: 85.0,
                            totalSteps: 84,
                            currentStep: 28,
                            stepSize: 4,
                            selectedColor: HexColor('#5b5869'),
                            unselectedColor: HexColor('#efefef'),
                          ),
                          SizedBox(width: 30.0),
                          CircularStepProgressIndicator(
                            child:Align(
                              child:Text('∞',
                                style: TextStyle(
                                  fontSize: 28.0,
                                ),
                              ),
                            ),
                            height: 85.0,
                            width: 85.0,
                            totalSteps: 84,
                            currentStep: 84,
                            stepSize: 4,
                            selectedColor: HexColor('#5b5869'),
                            unselectedColor: HexColor('#efefef'),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Text('      Daily Data \n           Left'),
                          SizedBox(width: 60.0,),
                          Text('Validity'),
                          SizedBox(width:60.0),
                          Text('Unlimited\n    Calls'),
                        ],
                      ),
                      RaisedButton(
                        color: HexColor('#f8f8f8'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)
                        ),
                        onPressed: () {},
                        child: Text('Recharge Now',
                          style: TextStyle(
                              color: HexColor('#c92223')
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 345,
                child: Row(
                  children: [
                    Text('       Manage account'),
                    SizedBox(width: 150,),
                    RaisedButton(
                      color: HexColor('#f8f8f8'),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0)
                      ),
                      child: Text('Add  >',
                        style: TextStyle(
                            color: HexColor('#c92223')
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: HexColor('#f3f3f3'),
                thickness: 11.0,
                height: 800.0,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(0.0, 407.0, 0.0, 0.0),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/Recharge.jpg',
                        ),
                        iconSize: 52.0,onPressed: () {},

                      ),
                      SizedBox(width: 15,),
                      IconButton(
                        icon: Image.asset(
                          'assets/PayBills.jpg',
                        ),
                        iconSize: 50.0,onPressed: () {},
                      ),
                      SizedBox(width: 15,),
                      IconButton(
                        icon: Image.asset(
                          'assets/MyCoupons.jpg',
                        ),
                        iconSize: 63.0,onPressed: () {},
                      ),
                      SizedBox(width: 15,),
                      IconButton(
                        icon: Image.asset(
                          'assets/DigitalStore.jpg',
                        ),
                        iconSize: 64.0,onPressed: () {},
                      ),
                      SizedBox(width: 15,),
                      IconButton(
                        icon: Image.asset(
                          'assets/NETC.jpg',
                        ),
                        iconSize: 65.0,onPressed: () {},
                      ),
                      SizedBox(width: 15,),
                      IconButton(
                        icon: Image.asset(
                          'assets/Prepaid.jpg',
                        ),
                        iconSize: 64.0,onPressed: () {},
                      ),
                      SizedBox(width: 15,),
                      IconButton(
                        icon: Image.asset(
                          'assets/ReferAnd.jpg',
                        ),
                        iconSize: 64.0,onPressed: () {},
                      ),
                      SizedBox(width: 15,),
                      IconButton(
                        icon: Image.asset(
                          'assets/4g.jpg',
                        ),
                        iconSize: 68.0,onPressed: () {},
                      ),
                      SizedBox(width: 15,),
                      IconButton(
                        icon: Image.asset(
                          'assets/Help.jpg',
                        ),
                        iconSize: 64.0,onPressed: () {},
                      ),
                      SizedBox(width: 15,),
                      IconButton(
                        icon: Image.asset(
                          'assets/BhimUPI.jpg',
                        ),
                        iconSize: 64.0,onPressed: () {},
                      ),
                    ]
                ),
              ),
              Positioned(
                top: 505,
                child: Container(
                  height: 228,
                  width: 390,
                  color: HexColor('#f3f3f3'),
                  child: Swiper.children(
                    autoplay: true,
                    loop: true,
                    pagination: SwiperPagination(
                      margin: EdgeInsets.fromLTRB(10.0,0.0, 285, 20.0),
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.grey,size: 6.5,activeSize:6.5,activeColor: Colors.grey[850],
                      ),
                    ),
                    children: [
                      Container(
                        width: 100,
                        padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/50%dis.jpg',fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(0.0,10.0, 0.0, 39.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/598pack.jpg',fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/NoRecharge.jpg',fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/YoutubePremium.jpg',fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/Tandav.jpg',fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('assets/dataalert.jpg',fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top:700.0 ,
                right: 25.0,
                child:
                Text('More offers >',
                  style: TextStyle(
                      color: HexColor('#c92223')
                  ),
                ),
              ),
              Positioned(
                  top: 760,
                  left: 20.0,
                  child:Text('Buy',
                    style: TextStyle(
                        fontSize: 17.0
                    ),
                  )
              ),
        ],
      ),

          SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(0.0, 0, 0.0, 0.0),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
                  IconButton(
                    icon: Image.asset(
                      'assets/Postpaid.jpg',
                    ),
                    iconSize: 52.0,onPressed: () {},
                  ),
                  SizedBox(width: 10,),
                  IconButton(
                    icon: Image.asset(
                      'assets/dth.jpg',
                    ),
                    iconSize: 58.0,onPressed: () {},
                  ),
                  SizedBox(width: 15,),
                  IconButton(
                    icon: Image.asset(
                      'assets/broadband.jpg',
                    ),
                    iconSize: 60.0,onPressed: () {},
                  ),
                  SizedBox(width: 23,),
                  IconButton(
                    icon: Image.asset(
                      'assets/Xtream.jpg',
                    ),
                    iconSize: 55.0,
                    onPressed: () {},
                  ),
                  SizedBox(width: 15,),
                  IconButton(
                    icon: Image.asset(
                      'assets/Prepaid2.jpg',
                    ),
                    iconSize: 57.0,
                    onPressed: () {},
                  ),
                  SizedBox(width: 15,),
                ]
            ),
          ),
          Container(
            height: 228,
            width: 390,
            color: HexColor('#f3f3f3'),
            child: Swiper.children(
              autoplay: true,
              loop: true,
              pagination: SwiperPagination(
                margin: EdgeInsets.fromLTRB(10.0,0.0, 285, 20.0),
                builder: DotSwiperPaginationBuilder(
                  color: Colors.grey,size: 6.5,activeSize:6.5,activeColor: Colors.grey[850],
                ),
              ),
              children: [
                Container(
                  width: 100,
                  padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/Entertainpacks.jpg',fit: BoxFit.fill),

                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(0.0,10.0, 0.0, 39.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/3100+.jpg',fit: BoxFit.fill),
                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/Family.jpg',fit: BoxFit.fill),
                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/Fiber.jpg',fit: BoxFit.fill),
                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/Tandav.jpg',fit: BoxFit.fill),
                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(20.0,10.0, 0.0, 39.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/Kagaz.jpg',fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            height: 250,
            child: Image.asset('assets/Explore.jpg',
            fit: BoxFit.fill,
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.mic),
      //   onPressed:() {
      //     Navigator.of(context).push(
      //       PageRouteBuilder(
      //         opaque: false, // set to false
      //         pageBuilder: (BuildContext context, __, ___) => RupayPage(),
      //       ),
      //     );
      //   }
      // ),
    );
  }
}