import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hexcolor/hexcolor.dart';
class RupayPage extends StatefulWidget {
  @override
  _RupayPageState createState() => _RupayPageState();
}

class _RupayPageState extends State<RupayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
               decoration: BoxDecoration(
                image: DecorationImage(
                 image:AssetImage('assets/s1.jpg',),
                 fit: BoxFit.cover
    )
    ),child: Column(
          children: [
            SizedBox(height: 110,),
            Container(
              height: 160,
              width: 380,
              color: Colors.white,

              child: Swiper.children(
                  autoplay: false,
                 children: [
                   Container(
                     child: Column(
                       children: [
                         SizedBox(height: 12.0,),
                         Row(
                           children: [
                             SizedBox(width: 30.0,),
                             Image.asset('assetsbank/abank1.jpg',height: 17.0,),
                             SizedBox(width: 4.0,),
                             Text('airtel',
                               style: TextStyle(
                                   color: HexColor('#c92223'),
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20.0
                               ),
                             )
                           ],
                         ),
                        SizedBox(height: 16.0,),
                         Row(
                           children: [
                             Text('        Redeem discount coupons',textAlign: TextAlign.start,
                               style: TextStyle(fontWeight:FontWeight.bold),
                             ),
                           ],
                         ),
                          SizedBox(height: 6,),
                         Row(
                           children: [
                             Text('        Get upto ₹50 off on prepaid recharges'),
                           ],
                         ),
                         SizedBox(height: 20.0,),
                          Row(
                            children: [
                              SizedBox(width: 230.0,),
                              Text('Recharge Now',style: TextStyle(
                                  color:HexColor('#c92223'),
                                  fontWeight: FontWeight.bold,
                                fontSize: 15.0

                              ),)
                            ],

                          )
                       ],
                     ),
                   ),
                   Container(
                     child: Column(
                       children: [
                         SizedBox(height: 12.0,),
                         Row(
                           children: [
                             SizedBox(width: 30.0,),
                             Image.asset('assetsbank/abank1.jpg',height: 17.0,),
                             SizedBox(width: 4.0,),
                             Text('airtel',
                               style: TextStyle(
                                   color: HexColor('#c92223'),
                                   fontWeight: FontWeight.bold,
                                   fontSize: 20.0
                               ),
                             )
                           ],
                         ),
                         SizedBox(height: 14.0,),
                         Row(
                           children: [
                             Text('        Upto ₹40 cashback on Prepaid ',textAlign: TextAlign.start,
                               style: TextStyle(fontWeight:FontWeight.bold),
                             ),
                           ],
                         ),
                         SizedBox(height: 6,),
                         Row(
                           children: [
                             Text('        Valid on min. recharge of ₹149 using\n        Airtel Wallet, TnCA'),
                           ],
                         ),
                         SizedBox(height: 11.0,),
                         Row(
                           children: [
                             SizedBox(width: 230.0,),
                             Text('Recharge Now',style: TextStyle(
                                 color:HexColor('#c92223'),
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15.0

                             ),)
                           ],

                         )
                       ],
                     ),
                   )
                 ],
              ),

            ),
            SizedBox(height: 180,),
            RaisedButton(
              padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)
                ),
                child: Text('  Recharge  ',style: TextStyle(fontSize: 18.0),),
                color: Colors.white,
                onPressed: () {}
                ),
            SizedBox(height: 10.0,),
            RaisedButton(
                padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)
                ),
                child: Text('   Pay Bills   ',style: TextStyle(fontSize: 18.0),),
                color: Colors.white,
                onPressed: () {}
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
                padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)
                ),
                child: Text('Send Money',style: TextStyle(fontSize: 18.0),),
                color: Colors.white,
                onPressed: () {}
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
               padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)
                ),
                child: Text('Scan and Pay',style: TextStyle(fontSize: 18.0),),
                color: Colors.white,
                onPressed: () {}
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
                padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)
                ),
                child: Text(' Balance [₹100]',style: TextStyle(fontSize: 18.0),),
                color: Colors.white,
                onPressed: () {}
            ),
          ],
        ),
        ),
      ),



    );

  }
}

