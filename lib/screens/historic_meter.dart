import 'dart:ui';

import 'package:enigma_practical/screens/refer_friend.dart';
import 'package:enigma_practical/screens/widgets/chart_widget.dart';
import 'package:enigma_practical/screens/energy_chart_screen.dart';
import 'package:enigma_practical/screens/widgets/profile_widget.dart';
import 'package:enigma_practical/screens/widgets/side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'chart_screen.dart';

class HistoricMeter extends StatefulWidget {
  @override
  _HistoricMeterState createState() => _HistoricMeterState();
}

class _HistoricMeterState extends State<HistoricMeter> {
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
            builder: (context) =>  Column(
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
                    padding: EdgeInsets.only(left: 16, right: 16, top: 20),
                    child: Column(
                      children: [
                        Text(
                          "Historic Meter Reads",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ClipRect(
                          child: BackdropFilter(
                            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                              padding: EdgeInsets.only(top: 40),
                              decoration: new BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                              ),
                              width: 383,
                              height: 213,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Bill Date",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "Bill Date",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "Bill Date",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: Divider(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "2021.09.01",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "2000.00 £",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "2021.09.01",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                    child: Divider(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "2021.09.01",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "2000.00 £",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "2021.09.01",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                    child: Divider(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "2021.09.01",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "2000.00 £",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "2021.09.01",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 383,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ChartScreen(),
                                      ));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 83,
                                  height: 27,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomRight,
                                          stops: [
                                            0.1,
                                            1.0
                                          ],
                                          colors: [
                                            HexColor("#FD1494"),
                                            HexColor("#FDA694"),
                                          ])
                                  ),
                                  child: Text(
                                    "View >",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),

                        ///Payment
                        Text(
                          "Make a Card Payment",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ReferFriend(),
                                ));
                          },
                          child: Container(
                            height: 78,
                            width: 319,
                            alignment: Alignment.center,
                            //padding: EdgeInsets.only(top: 40),
                            decoration: new BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(39),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Total Balance", style: TextStyle(fontSize: 16),),
                                Text("£ 1500.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),)
                              ],
                            ),
                          ),
                        ),
                        ///Setup payment
                        SizedBox(height: 30,),
                        Text("Setup your payment method",
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                        SizedBox(height: 30,),

                        InkWell(
                          onTap:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EnergyChartScreen(),
                                ));
                          } ,
                          child: Container(
                            alignment: Alignment.center,
                            width: 187,
                            height: 29,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    stops: [
                                      0.1,
                                      1.0
                                    ],
                                    colors: [
                                      HexColor("#FD1494"),
                                      HexColor("#FDA694"),
                                    ])),
                            child: Text(
                              "Setup Direct Debit",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ),
                        ),

                        SizedBox(height: 30,),
                        Text("OR",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 22,
                              width: 54,
                              color: HexColor("#FFFFFF"),
                            ),
                            Container(
                              height: 22,
                              width: 54,
                              color: HexColor("#5870BE"),
                            ),
                            Container(
                              height: 22,
                              width: 54,
                              color: HexColor("#E59703"),
                            ),
                            Container(
                              height: 22,
                              width: 54,
                              color: HexColor("#FFFFFF"),
                            )
                          ],
                        )

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
