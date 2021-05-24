import 'package:flutter/material.dart';

import 'profile_widget.dart';

class SideDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Scaffold(
        drawer: ProfileWidget(),
        body: new Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pink_bg.jpg"),
                fit: BoxFit.cover,
              )),
          child: Column(
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
                  IconButton(
                    icon: CircleAvatar(child: Icon(Icons.person,color: Colors.transparent,),backgroundColor: Colors.transparent,),color: Colors.transparent, iconSize: 28 , onPressed: ()=>Scaffold.of(context).openDrawer(),
                  ),
                ],
              ),

              SizedBox(height: 50,),
              new DrawerHeader(
                child: new Text("Super \npower",style: TextStyle(color: Colors.white,
                    fontSize: 40,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 50,),
              GestureDetector(onTap:(){
                Navigator.pop(context);
              }, child: new Text("Reading",style: TextStyle(color: Colors.white,
                  fontSize: 24,fontWeight: FontWeight.w600),),),
              SizedBox(height: 50,),
              GestureDetector(onTap:(){
                Navigator.pop(context);
              }, child: new Text("Payment",style: TextStyle(color: Colors.white,
                  fontSize: 24,fontWeight: FontWeight.w600),),),
              SizedBox(height: 50,),
              new GestureDetector(
                child: new Text("Referral",style: TextStyle(color: Colors.white,
                    fontSize: 24,fontWeight: FontWeight.w600)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 50,),
              GestureDetector(onTap:(){
                Navigator.pop(context);
              }, child: new Text("Usage",style: TextStyle(color: Colors.white,
                  fontSize: 24,fontWeight: FontWeight.w600),),),
              SizedBox(height: 50,),
              new GestureDetector(
                child: new Text("About Us",style: TextStyle(color: Colors.white,
                    fontSize: 24,fontWeight: FontWeight.w600)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}