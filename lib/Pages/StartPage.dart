import 'package:airtel/Pages/Login.dart';
import 'package:airtel/Pages/Signup.dart';
import 'package:airtel/Pages/googleuser.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:airtel/Pages/BottomNavigation.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool formVisible;
  int _formsIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BottomNavigation();
    formVisible= false;
    _formsIndex=1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/airtellog.jpg'),
            fit: BoxFit.fill
          )
        ),
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 50.0,),
                    Text(
                      'Welcome To India\'s Widest Network',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        backgroundColor: HexColor('#d91f2a')
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 200,),

                    SizedBox(height: 200,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Expanded(
                          child: RaisedButton(
                            color: Colors.red,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text('Login',
                              style: TextStyle(
                                  fontSize: 16.0
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                formVisible=true;
                                _formsIndex=1;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: RaisedButton(
                            color: Colors.green[800],
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text('Signup',
                              style: TextStyle(
                                fontSize: 16.0
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                formVisible=true;
                                _formsIndex=2;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      child:SignInButton(
                        Buttons.GoogleDark,
                        onPressed: (){
                          signInWIthGoogle().then((value){
                            Firestore.instance.collection('gmail')
                                .add({'email':emailt,'image':imageUrl,'name':namet});
                          }).catchError((e){
                            print(e);
                          }).then((value){
                            if (value == null) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return BottomNavigation();
                                  },
                                ),
                              );
                            }
                          }).catchError((e){
                            print(e);
                          });
                        },
                      ) ,
                    ),
                  ],
                ),
              ),
            ),
            AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                 child: (formVisible)
                     ?Container(
                   color: Colors.black54,
                   alignment: Alignment.center,
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           RaisedButton(
                             textColor: _formsIndex==1? Colors.white : Colors.black,
                             color: _formsIndex==1? Colors.red : Colors.white,
                             child: Text('Login'),
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20.0)
                             ),
                             onPressed: () {
                               setState(() {
                                 _formsIndex= 1;
                               });
                             },
                           ),
                           SizedBox(width: 10.0,),
                           RaisedButton(
                             textColor: _formsIndex==2? Colors.white : Colors.black,
                             color: _formsIndex==2? Colors.red : Colors.white,
                             child: Text('Signup'),
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20.0)
                             ),
                             onPressed: () {
                               setState(() {
                                 _formsIndex= 2;
                               });
                             },
                           ),
                           SizedBox(width: 10.0,),
                           IconButton(
                               color: Colors.white,
                               icon: Icon(Icons.clear),
                               onPressed: () {
                                 setState(() {
                                   formVisible=false;
                                 });
                               }
                           )
                         ],
                       ),
                       Container(
                         child: AnimatedSwitcher(
                           duration: Duration(milliseconds: 200),
                           child: _formsIndex==1 ? LoginForm(): SignupForm(),
                         ),
                       )
                     ],
                   ),
                 )
                  :null
            )
          ],
        ),
      ),
    );
  }
}
