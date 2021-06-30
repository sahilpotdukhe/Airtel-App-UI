import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class BankingPage extends StatefulWidget {
  @override
  _BankingPageState createState() => _BankingPageState();
}

class _BankingPageState extends State<BankingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(0.0),
            height: 53.0,
            //color: Colors.red,
            child: Row(
              children: [
                SizedBox(width:10.0),
                Image.asset('assetsbank/abank1.jpg',height: 34.0,),
                Text(' Airtel Payments Bank',
                   style: TextStyle(
                     fontSize: 20.0,
                     letterSpacing: 0.5,
                   ),
                ),
                SizedBox(width: 50.0,),
                Icon(Icons.headset_mic_outlined,color: Colors.grey,size: 26.0,),
                SizedBox(width: 10.0,),
                Image.asset('assetsbank/40.jpg',height:34.0)
              ],
            ),
          ),
          Container(
            height: 138,
            width: 390,
            color: HexColor('#f5f5f5'),
            child: Swiper.children(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset('assetsbank/Wallet.jpg'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset('assetsbank/Upiview.jpg'),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/AddMoney.jpg'),iconSize: 66.0,onPressed: () {},),
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/ElectricityBill.jpg'),
                  padding:EdgeInsets.fromLTRB(0.0, 17.0, 0.0, 0.0),iconSize: 75.0 ,onPressed: () {},),
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/BhimUpi.jpg'), iconSize: 62.0,onPressed: () {},),
              SizedBox(width: 17.0,),
              IconButton(icon: Image.asset('assetsbank/SafePay.jpg'),iconSize: 62.0 ,onPressed: () {},),
            ],
          ),
          SizedBox(height: 13.0,),
          Container(
            height: 197,
            width: 390,
            color: HexColor('#f5f5f5'),
            child: Swiper.children(
              loop: false,
              autoplay: true,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0.0,7.0, 0, 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset('assetsbank/Accidentally.jpg'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0,7.0, 0, 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset('assetsbank/Myntra15%.jpg'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0,7.0, 0, 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset('assetsbank/RewardsRecharge.jpg'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0,7.0, 0, 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset('assetsbank/30%cashback.jpg'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0,7.0, 0, 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset('assetsbank/30%cylinder.jpg'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0,7.0, 0, 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset('assetsbank/Flat50%.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/Recharge2.jpg'),iconSize: 62.0,onPressed: () {},),
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/PayBill.jpg'), iconSize: 62.0 ,onPressed: () {},),
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/Scanpay.jpg'), iconSize: 62.0,onPressed: () {},),
              SizedBox(width: 17.0,),
              IconButton(icon: Image.asset('assetsbank/Insurance.jpg'),iconSize: 62.0 ,onPressed: () {},),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/DebitCard.jpg'),iconSize: 62.0,onPressed: () {},),
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/Googleplay.jpg'),iconSize: 62.0,onPressed: () {}, ),
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/Netcfastag.jpg'), iconSize: 62.0,onPressed: () {},),
              SizedBox(width: 17.0,),
              IconButton(icon: Image.asset('assetsbank/BookCylinder.jpg'),iconSize: 62.0 ,onPressed: () {},),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20.0,),
              IconButton(icon: Image.asset('assetsbank/Train.jpg'),iconSize: 70.0,onPressed: () {},),
              SizedBox(width: 15.0,),
              IconButton(icon: Image.asset('assetsbank/Offers.jpg'),iconSize: 56.0 ,onPressed: () {},),
              SizedBox(width: 24.0,),
              IconButton(icon: Image.asset('assetsbank/GetLoan.jpg'), iconSize: 55.0,onPressed: () {},),
              SizedBox(width: 21.0,),
              IconButton(icon: Image.asset('assetsbank/More.jpg'),iconSize: 62.0 ,onPressed: () {})
            ],
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            height: 420,
            color: HexColor('#d91f2a'),
            child: Column(
                  children: [
                    Card(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ) ,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('Help & Support',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            subtitle:  Text('Quick answers to everything you want to know about your \naccount,CashBacks,Recharges,FASTag & more.',style: TextStyle(fontSize: 12.0)),
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            children: [
                              SizedBox(width: 250,),
                              RaisedButton(
                                child: Text('Get Help',style: TextStyle(color: Colors.white),),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0)
                                  ),
                                onPressed: () {},
                                color: Colors.black
                              )
                            ],
                          ),
                        ],
                      )
                    ),
                    Card(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ) ,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Drive towards a safer future!',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              subtitle:  Text('Get Car Insurance with zero depreciation cover and 24x7 road side assistance.Completly cashless purchase and claim.',style: TextStyle(fontSize: 12.0)),
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                SizedBox(width: 225,),
                                RaisedButton(
                                    child: Text('Secure Me Now',style: TextStyle(color: Colors.white),),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40.0)
                                    ),
                                    onPressed: () {},
                                    color: Colors.black
                                )
                              ],
                            ),
                          ],
                        )
                    ),
                    Card(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ) ,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Enjoy Safe Banking',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              subtitle:  Text('Never share your Password,mPIN,OTP,Card Number,CVV with anyone.It Can result in transfer of funds from your account to wallet.',style: TextStyle(fontSize: 12.0)),
                            ),
                            SizedBox(height: 16.0,),
                            Row(
                              children: [
                                SizedBox(width: 250,),
                                RaisedButton(
                                    child: Text('Read more',style: TextStyle(color: Colors.white),),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40.0)
                                    ),
                                    onPressed: () {},
                                    color: Colors.black
                                )
                              ],
                            ),
                          ],
                        )
                    ),

                  ],
            ),
          )
        ],
      ),
    );
  }
}
