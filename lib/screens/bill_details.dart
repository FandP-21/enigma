import 'package:enigma_practical/screens/widgets/bill_details_widget.dart';
import 'package:enigma_practical/screens/widgets/chart_widget.dart';
import 'package:enigma_practical/screens/widgets/profile_widget.dart';
import 'package:enigma_practical/screens/widgets/side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BillDetails extends StatefulWidget {
  @override
  _BillDetailsState createState() => _BillDetailsState();
}

class _BillDetailsState extends State<BillDetails> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  SizedBox(height: 87,),
                  Text("Your Bill Details For The Period",  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700
                  ),),

                  SizedBox(height: 20,),
                  Container(
                    width: 343,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 16,
                          width: 57,
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  stops: [
                                    0.1,
                                    1.0
                                  ],
                                  colors: [
                                    HexColor("#FE1194"),
                                    HexColor("#FDA794"),
                                  ])

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Jan", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 8
                              ),),
                              Icon(Icons.keyboard_arrow_down, size: 15, color: Colors.white,)
                            ],
                          ),
                        ),
                        SizedBox(width: 2,),
                        Container(
                          alignment: Alignment.center,
                          height: 16,
                          width: 57,
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  stops: [
                                    0.1,
                                    1.0
                                  ],
                                  colors: [
                                    HexColor("#FE1194"),
                                    HexColor("#FDA794"),
                                  ])

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
                    height: 380,
                    width: 343,
                    padding: EdgeInsets.only(top: 40,left: 20, right: 20),
                    decoration: new BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                    ),
                    child: Column(
                      children: [
                        BillWidget("Bill Amount: 44.00 £", "Due Date: 2021.09.01", FontWeight.w700,FontWeight.w700),
                        BillWidget("Last Month Charges :", "£ 2000.00", FontWeight.normal,FontWeight.w700),
                        BillWidget("What You Paid :", "2021.09.01", FontWeight.normal,FontWeight.w700),
                        BillWidget("How You Paid", "DD", FontWeight.normal,FontWeight.w700),
                        BillWidget("Unpaid Balance :", "£ 0.00", FontWeight.normal,FontWeight.w700),
                        BillWidget("Monthly Consumption", "Due Date: 2021.09.01", FontWeight.normal,FontWeight.w700),
                        BillWidget("Cost of Energy Used (Excluding VAT) :", "£ 41.95", FontWeight.normal,FontWeight.w700),
                        BillWidget("VAT at 5% :", "£ 2.95", FontWeight.normal,FontWeight.w700),
                        BillWidget("Sub Total Including VAT :", "£ 44.95", FontWeight.normal,FontWeight.w700),
                        BillWidget("TOTAL AMOUNT DUE :", "£ 44.95", FontWeight.normal,FontWeight.w700),
                      ],

                    ),
                  ),
                  ///Save pdf
                  Container(
                    width: 343,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Save pdf",
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white),
                              ),
                              Icon(Icons.download_rounded,color: Colors.white,size: 15,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )

        ),
      ),
    );
  }
}
