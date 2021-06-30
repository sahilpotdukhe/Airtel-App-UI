import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(' GOLD  >',
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 0.5,
                    color: HexColor('#bd9117'),
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 165.0,),
                IconButton(
                    icon: Icon(
                      Icons.notifications_none,
                      size: 30.0,),
                    onPressed: () {},
                ),
                Icon(Icons.headset_mic_outlined,color: Colors.grey,size: 26.0,),
                SizedBox(width: 10.0,),
              ],
            ),
          ),
          Divider(
            color: HexColor('#f3f3f3'),
            thickness:10,
            height: 2.0,
          ),
          Image.asset('assets/e2.jpg'),
          Image.asset('assets/e4.jpg'),
          Image.asset('assets/e3.jpg'),
          Image.asset('assets/e1.jpg'),
          Image.asset('assets/e5.jpg'),
          Image.asset('assets/e6.jpg'),
          Image.asset('assets/e7.jpg'),
        ],
      ),
    );
  }
}
