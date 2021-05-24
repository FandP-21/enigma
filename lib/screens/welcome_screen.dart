import 'dart:ui';

import 'package:enigma_practical/screens/member_login.dart';
import 'package:enigma_practical/screens/refer_friend.dart';
import 'package:enigma_practical/screens/widgets/chart_widget.dart';
import 'package:enigma_practical/screens/energy_chart_screen.dart';
import 'package:enigma_practical/screens/widgets/profile_widget.dart';
import 'package:enigma_practical/screens/widgets/side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'chart_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/pink_bg.jpg"),
            fit: BoxFit.cover,
          )),
      child: SafeArea(
        child: Scaffold(
          endDrawer: SideDrawer(),
          drawer: ProfileWidget(),
          backgroundColor: Colors.transparent,
          body: Builder(
            builder: (context) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: CircleAvatar(child: Icon(Icons.person,color: Colors.black,),backgroundColor: Colors.white,),color: Colors.white, iconSize: 28 , onPressed: ()=>Scaffold.of(context).openDrawer(),
                    ),
                    Container(
                      width: 100,
                      child: Text("Flutter Test", maxLines: 2, textAlign: TextAlign.center ,style: TextStyle(
                        //fontFamily: "GeometrySoftPro",
                          color: Colors.white,
                          fontSize: 24
                      ),),
                    ),
                    IconButton(onPressed: ()=>Scaffold.of(context).openEndDrawer(), icon: Icon(Icons.menu),iconSize: 28  )
                  ],
                ),
                SizedBox(height: 173,),
                Stack(
                  alignment: Alignment.center,
                  children: [

                    ClipRect(
                      child: BackdropFilter(
                        filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MemberLogin(),
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.only(top: 40),
                            decoration: new BoxDecoration(
                              color: Colors.white60.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            width: 199,
                            height: 288,
                            child: Column(
                              children: [
                                Text("Hello!", style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ),),
                                Text("SAM", style: TextStyle(
                                    fontSize: 63,
                                    fontWeight: FontWeight.w700
                                ),),
                                Container(
                                  width: 142,
                                  child: Text("Welcome to Flutter App", style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700
                                  ),
                                  maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment(1.2, 0),
                      child: Image(image: AssetImage("assets/images/thumbsup.png"), height: 200, width: 200,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
