import 'package:enigma_practical/screens/chart_screen.dart';
import 'package:enigma_practical/screens/widgets/energy_chart.dart';
import 'package:enigma_practical/screens/widgets/profile_widget.dart';
import 'package:enigma_practical/screens/widgets/side_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EnergyChartScreen extends StatefulWidget {
  @override
  _EnergyChartScreenState createState() => _EnergyChartScreenState();
}

class _EnergyChartScreenState extends State<EnergyChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/pink_bg.jpg"),
            fit: BoxFit.cover,
          )
      ),
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

                Container(

                  width: 236,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Hi Sam,", style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 31
                          ),),

                          Image(image: AssetImage("assets/images/emoji.png"), height: 87, width: 68,)
                          //img
                        ],
                      ),
                      Text("How are you doing today?", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 46,),
                Container(
                  height: 78,
                  width: 306,
                  padding: EdgeInsets.only(left: 40,right: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Balance",style: TextStyle(
                      fontSize: 16
                  ),),
                          Text("£ 99.11",style: TextStyle(
                              fontSize: 16,
                            fontWeight: FontWeight.w700
                          ),),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 21,bottom: 21),
                            width:101,
                            height: 36,
                            child: Text("Your last statement was £ 99.11 on Friday 3rd January 2021.", maxLines: 3,
                            style: TextStyle(
                              fontSize: 10
                            ),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 46,),
                ///Chart
                Container(
                  height: 285,
                  width: 360,
                  padding: EdgeInsets.only(left: 29,right: 18,top: 15,bottom: 11),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.3)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width:220,
                            child: Text("Energy consumption for the month",maxLines: 2, style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20
                            )),
                          ),

                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EnergyChart(),
                                  ));
                            },
                            child: Container(
                              width: 83,
                              height: 27,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
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
                              child: Text("View >", style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              ),),
                            ),
                          )
                        ],
                      ),
                      EnergyChart()
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
