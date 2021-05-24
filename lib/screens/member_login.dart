import 'dart:math';
import 'dart:ui';

import 'package:enigma_practical/screens/historic_meter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class MemberLogin extends StatefulWidget {
  @override
  _MemberLoginState createState() => _MemberLoginState();
}

class _MemberLoginState extends State<MemberLogin> {
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
          backgroundColor: Colors.transparent,//Colors.transparent,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  child: Text("Flutter Test", maxLines: 2, textAlign: TextAlign.center ,style: TextStyle(
                    //fontFamily: "GeometrySoftPro",
                      color: Colors.white,
                      fontSize: 24
                  ),),
                ),
                SizedBox(height: 170,),
                Text("Member Login", style: TextStyle(
                    //fontFamily: "GeometrySoftPro",
                    color: Colors.black,
                    fontSize: 23,
                  fontWeight: FontWeight.w700
                ),),
                SizedBox(height: 30,),
                Container(
                  width: 318,
                  height: 40,
                  decoration: BoxDecoration(
                    color: HexColor("EBECF0"),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Email Address",
                    ),
                  ),
                ),
                SizedBox(height: 30,),

                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HistoricMeter(),
                        ));
                  },
                  //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  child: Container(
                    width: 158,
                    decoration:  BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            HexColor("FDA994"),
                            HexColor("FF0F94")
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0))
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: const Text(
                        'Get OTP',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500)
                    ),
                  ),
                ),
                SizedBox(height: 30,),

                Text("A four digit OTP will be sent via email to sign In", style: TextStyle(
                //fontFamily: "GeometrySoftPro",
                    color: Colors.black,
                    fontSize: 11
                ),),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
