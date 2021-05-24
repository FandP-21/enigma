import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: new Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/pink_bg.jpg"),
              fit: BoxFit.cover,
            )),
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
            SizedBox(height: 40,),
            CircleAvatar(child: Icon(Icons.person,color: Colors.black,size: 50,),backgroundColor: Colors.white,minRadius: 50,),
            SizedBox(height: 80,),
            GestureDetector(onTap:(){
              Navigator.pop(context);
            }, child: new Text("My Profile",style: TextStyle(color: Colors.white,
                fontSize: 24,fontWeight: FontWeight.w600),),),
            SizedBox(height: 50,),
            GestureDetector(onTap:(){
              Navigator.pop(context);
            }, child: new Text("My Bills",style: TextStyle(color: Colors.white,
                fontSize: 24,fontWeight: FontWeight.w600),),),
            SizedBox(height: 50,),
            GestureDetector(onTap:(){
              Navigator.pop(context);
            }, child: new Text("Update Password",style: TextStyle(color: Colors.white,
                fontSize: 24,fontWeight: FontWeight.w600),),),
            SizedBox(height: 50,),
            new GestureDetector(
              child: new Text("Logout",style: TextStyle(color: Colors.white,
                  fontSize: 24,fontWeight: FontWeight.w600)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
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
    );
  }
}