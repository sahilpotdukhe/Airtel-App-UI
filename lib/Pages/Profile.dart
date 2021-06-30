import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:airtel/Pages/googleuser.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
              //padding: EdgeInsets.only(top: 0.0),
              height: 150,
              width: 395,
              color: HexColor('#f3f3f3'),
              child: Row(
                children: [
                  SizedBox(width: 20.0,),
                  Column(
                    children: [
                      SizedBox(height: 28.0,),
                      Container(
                        child: FutureBuilder(
                        future: getCurrentUser(),
                        builder: (context,snapshot){
                             if(snapshot.connectionState==ConnectionState.done) {
                               return CircleAvatar(
                                 backgroundImage: NetworkImage('${snapshot.data.photoUrl}'),
                                 radius: 35,
                               );
                             }
                             else{
                                     return CircularProgressIndicator();
                               }
                             }
                        ),
                        padding: const EdgeInsets.all(4.0),
                        decoration: new BoxDecoration(
                          // border color
                          shape: BoxShape.circle,
                          border: Border.all(width: 3.0,color: HexColor('#6f6434'), ),
                        ),
                      ),
                      SizedBox(height:5.0),
                      Text('GOLD MEMBER',style: TextStyle(
                          color:HexColor('#6f6434'),
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  Container(
                    width: 288.0,
                    child:FutureBuilder(
                      future: getCurrentUser(),
                      builder: (context,snapshot){
                        if(snapshot.connectionState==ConnectionState.done){
                           return ListTile(
                            title: Text('${snapshot.data.displayName}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              fontSize: 18
                            ),
                           ),

                            subtitle: Text('${snapshot.data.email}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  letterSpacing: 0.3
                              ),
                            ),
                            trailing:  Icon(Icons.arrow_forward_ios_outlined,size:17.0,),
                          );
                        }else{
                          return CircularProgressIndicator();
                        }
                      },

                    )

                    ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 395,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 13.0,),
                  Image.asset('assets/GoldBadge.jpg',
                    height: 40.0,
                  ),
                  SizedBox(width: 14.0,),
                  Container(width: 6.0,height:48,color:HexColor('#6f6434'),),
                  Container(
                    width: 247,
                    color:HexColor('#6f6434'),
                    child: SingleChildScrollView(
                        scrollDirection:Axis.horizontal ,
                        child:Row(
                          children: [
                            RaisedButton.icon(onPressed: () {}, icon: Icon(Ionicons.ios_musical_notes),
                              label: Text('Music'),
                              color:Colors.white ,
                            ),
                            Container(width: 6.0,height:48,color:HexColor('#6f6434'),),
                            RaisedButton.icon(onPressed: () {}, icon: Icon(MaterialCommunityIcons.airplane),
                              label: Text('Travel'),
                              color:Colors.white ,
                            ),
                            Container(width: 6.0,height:48,color:HexColor('#6f6434'),),
                            RaisedButton.icon(onPressed: () {}, icon: Icon(Foundation.play_video),
                              label: Text('Movies'),
                              color:Colors.white ,
                            ),
                            Container(width: 6.0,height:48,color:HexColor('#6f6434'),),
                            RaisedButton.icon(onPressed: () {}, icon: Icon(MaterialCommunityIcons.shopping),
                              label: Text('Shopping'),
                              color:Colors.white ,
                            ),
                            Container(width: 6.0,height:48,color:HexColor('#6f6434'),),
                            RaisedButton.icon(onPressed: () {}, icon: Icon(MaterialCommunityIcons.food),
                              label: Text('Food'),
                              color:Colors.white ,
                            ),
                          ],
                        )
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 60,
                    color:HexColor('#6f6434'),
                    child: Text(' \n      Claim \n    Rewards',style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
            Divider(
              color: HexColor('#f3f3f3'),
              thickness: 11.0,
              height: 10.0,
            ),
            ListTile(
              leading: IconButton(icon:Image.asset('assetsbank/abank1.jpg'),onPressed: () {},),
              title: Text('My Airtel',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing:  Icon(Icons.arrow_forward_ios_outlined,size:17.0,),
              tileColor: Colors.white,
            ),
            Divider(
              color: HexColor('#f3f3f3'),
              thickness:2,
              height: 2.0,
            ),
            ListTile(
              leading: IconButton(icon:Icon(FontAwesome.bank),color: HexColor('#e00200'),onPressed: () {},),
              title: Text('Banking',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing:  Icon(Icons.arrow_forward_ios_outlined,size:17.0,),
              tileColor: Colors.white,
            ),
            Divider(
              color: HexColor('#f3f3f3'),
              thickness:2,
              height: 2.0,
            ),
            ListTile(
              leading: IconButton(icon:Icon(Feather.settings),color: HexColor('#e00200'),onPressed: () {},),
              title: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing:  Icon(Icons.arrow_forward_ios_outlined,size:17.0,),
              tileColor: Colors.white,
            ),
            Divider(
              color: HexColor('#f3f3f3'),
              thickness:2,
              height: 2.0,
            ),
            ListTile(
              leading: IconButton(icon:Icon(Entypo.help_with_circle),color: HexColor('#e00200'),onPressed: () {},),
              title: Text('Help & Support',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing:  Icon(Icons.arrow_forward_ios_outlined,size:17.0,),
              tileColor: Colors.white,
            ),
            Divider(
              color: HexColor('#f3f3f3'),
              thickness:2,
              height: 2.0,
            ),
            ListTile(
              leading: IconButton(icon:Icon(FontAwesome5.compass),color: HexColor('#e00200'),onPressed: () {},),
              title: Text('Airtel Explore',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing:  Icon(Icons.arrow_forward_ios_outlined,size:17.0,),
              tileColor: Colors.white,
            ),
            Divider(
              color: HexColor('#f3f3f3'),
              thickness:2,
              height: 2.0,
            ),
            ListTile(
              leading: IconButton(icon:Icon(FontAwesome5.share_square),color: HexColor('#e00200'),onPressed: () {},),
              title: Text('Refer & Earn',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing:  Icon(Icons.arrow_forward_ios_outlined,size:17.0,),
              tileColor: Colors.white,
            ),
            Divider(
              color: HexColor('#f3f3f3'),
              thickness:2,
              height: 2.0,
            ),
            ListTile(
              leading: IconButton(icon:Icon(Entypo.location),color: HexColor('#e00200'),onPressed: () {},),
              title: Text('Locations',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing:  Icon(Icons.arrow_forward_ios_outlined,size:17.0,),
              tileColor: Colors.white,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(130, 10, 130, 10),
              height:35,
              color:HexColor('#6f6434'),
              child: Text('Version : 4.16.0.3',style: TextStyle(color: Colors.white),),
            ),
            Center(
              child: RaisedButton(
                  child: Text('Logout',style: TextStyle(color: Colors.white,fontSize: 16),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: HexColor('#d91f2a'),
                  onPressed: (){
                    FirebaseAuth.instance.signOut()
                        .then((value){
                      Navigator.popAndPushNamed(context, '/startpage');
                    })
                        .catchError((e){
                      print(e);
                    });
                  }
              ),
            ),
            Center(
              child: RaisedButton(
                  child: Text('Google Logout',style: TextStyle(color: Colors.white,fontSize: 16),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: HexColor('#d91f2a'),
                  onPressed: (){
                    signOutGoogle();
                    Navigator.popAndPushNamed(context, '/startpage');

                  }
              ),
            )
          ],
        )
    );
  }
}



