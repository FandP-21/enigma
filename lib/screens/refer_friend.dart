import 'dart:ui';

import 'package:enigma_practical/screens/widgets/chart_widget.dart';
import 'package:enigma_practical/screens/energy_chart_screen.dart';
import 'package:enigma_practical/screens/widgets/profile_widget.dart';
import 'package:enigma_practical/screens/widgets/side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'bill_details.dart';
import 'chart_screen.dart';

class ReferFriend extends StatefulWidget {
  @override
  _ReferFriendState createState() => _ReferFriendState();
}

class _ReferFriendState extends State<ReferFriend> {
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
          backgroundColor: Colors.transparent,
          endDrawer: SideDrawer(),
          drawer: ProfileWidget(),
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
                Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Refer and Earn",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: 334,
                          child: Text("Refer your friends To Super Power. Its a win-win We'll give you and your friends up to £50 each, to say thanks when they join through your referral link. they save, you save, and we all help protect the planet.",
                          textAlign: TextAlign.center,
                            maxLines: 4,
                            style: TextStyle(
                            fontSize: 12
                          ),),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          height: 64,
                          width: 319,
                          alignment: Alignment.center,
                          //padding: EdgeInsets.only(top: 40),
                          decoration: new BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(39),
                          ),
                          child: Text("Hurry! Refer a Friend Now", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),
                        ),
                        SizedBox(height: 30,),
                        ///personal link
                        Text("Here's your personal link", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700)),
                        SizedBox(height: 10,),
                        Wrap(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          spacing: 5,
                          direction: Axis.horizontal,
                          children: [
                            Container(
                              height: 28,
                              width: 169,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.only(top: 40),
                              decoration: new BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.link, color: HexColor("#7163BA"), size: 10,),
                                  Text("superpower.co.uk/refer/realgifts", style: TextStyle(fontSize: 7, fontWeight: FontWeight.w700),),
                                ],
                              ),
                            ),

                            Container(
                              height: 28,
                              width: 33,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.only(top: 40),
                              decoration: new BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Icon(Icons.share, color: HexColor("#FFFFFF"), size: 15,),
                            ),

                            Container(
                              height: 28,
                              width: 33,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.only(top: 40),
                              decoration: new BoxDecoration(
                                color: HexColor("#64A9EC"),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Icon(Icons.broken_image_rounded, color: HexColor("#FFFFFF"), size: 15,),
                            ),

                            Container(
                              height: 28,
                              width: 33,
                              alignment: Alignment.center,
                              //padding: EdgeInsets.only(top: 40),
                              decoration: new BoxDecoration(
                                color: HexColor("#172464"),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Text("f", style:TextStyle(color: HexColor("#FFFFFF"), fontSize: 15,),),
                            ),



                          ],
                        ),
                        SizedBox(height: 30,),
                        Container(
                          height: 38,
                          width: 200,
                          padding: EdgeInsets.only(left: 10,right: 10),
                          alignment: Alignment.center,
                          //padding: EdgeInsets.only(top: 40),
                          decoration: new BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(39),
                          ),
                          child: Text("Refer Super Power to your friends. You'll get £50. they get £50. Each Time.",
                            style: TextStyle(fontSize: 9), maxLines: 2, textAlign: TextAlign.center,),
                        ),

                        SizedBox(height: 10,),
                        Text("How it works", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                        SizedBox(height: 12,),
                        Container(
                          width: 216,
                          height: 39,
                          child: Text("Invite your friends to sign up, Once their switch completes after 21 days you'll both get your rewards.",
                            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700), maxLines: 3, textAlign: TextAlign.center,),
                        ),

                        SizedBox(height: 20,),
                        InkWell(
                          onTap:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BillDetails(),
                                ));
                          } ,
                          child: Container(
                            alignment: Alignment.center,
                            width: 160,
                            height: 97,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 5, color: Colors.white),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    stops: [
                                      0.1,
                                      1.0
                                    ],
                                    colors: [
                                      HexColor("#40328D"),
                                      HexColor("#7163BA"),
                                    ])),
                            child: Column(
                              children: [
                                Text(
                                  "My total rewards",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 9,
                                      color: HexColor("#FFEACB")),
                                ),
                                Text(
                                  "£50.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: HexColor("#000000")),
                                ),
                                Text(
                                  "My rewards this month",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 9,
                                      color: HexColor("#FFEACB")),
                                ),
                                Text(
                                  "£50.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: HexColor("#000000")),
                                ),
                                Text(
                                  "See my refferals",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 7,
                                      color: HexColor("#000000")),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
