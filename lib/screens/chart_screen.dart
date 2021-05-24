import 'package:enigma_practical/screens/widgets/chart_widget.dart';
import 'package:enigma_practical/screens/widgets/profile_widget.dart';
import 'package:enigma_practical/screens/widgets/side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
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
                  margin: EdgeInsets.only(left: 35, right: 35, top: 100),
                  child: Column(
                    children: [
                      ///heading section
                      Container(
                        width: 344,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 16,
                              width: 101,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                                  color: Colors.white.withOpacity(0.3)
                              ),
                              child: Text("Electricity and Gas", style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 8
                              ),),
                            ),

                            Container(
                              alignment: Alignment.center,
                              height: 16,
                              width: 50,
                              padding: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    HexColor("FDA994"),
                                    HexColor("FF0F94")
                                  ],
                                ),

                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("2021", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 8
                                  ),),
                                  Icon(Icons.keyboard_arrow_down, size: 15, color: Colors.white,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      ///Chart Section
                      Container(
                        height: 202,
                        width: 344,
                        color: Colors.white.withOpacity(0.3),
                        child: ChartWidget(),
                      ),
                      SizedBox(height: 21,),
                      ///UsageDetails
                      Container(
                        height: 37,
                        width: 306,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white.withOpacity(0.3)
                        ),
                        child: Wrap(
                          spacing: 15,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(Icons.arrow_back_ios,size: 20,),
                            Text("Usage Details-January", style: TextStyle(
                                fontWeight: FontWeight.w700
                            ),),
                            Icon(Icons.arrow_forward_ios, size: 20,),
                          ],
                        ),
                      ),
                      SizedBox(height: 46,),
                      ///Buttons section
                      Container(
                        height: 90,
                        width: 311,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            //color: Colors.pink,
                            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                              0.1,
                              1.0
                            ], colors: [
                              Colors.blue,
                              Colors.lightBlue,

                            ])
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              width:120,
                              child: Text("Electricity",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700
                                ),),
                            ),

                            Container(
                                width: 112,
                                child: Text("1300 KWH \$1100",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),))
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 90,
                        width: 311,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            //color: Colors.pink,
                            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                              0.1,
                              1.0
                            ], colors: [
                              HexColor("E24878"),
                              HexColor("FF85B0"),

                            ])
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 20,
                          children: [
                            Container(
                              width:120,
                              child: Text("Gas",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700
                                ),),
                            ),

                            Container(
                                width: 112,
                                child: Text("1300 KWH \$1100",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),))
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),],
            ),
          )

          ),
      ),
    );
  }
}
