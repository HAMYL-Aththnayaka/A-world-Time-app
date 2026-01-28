import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLoactionState createState() => _ChooseLoactionState();
}
 
class _ChooseLoactionState extends State<ChooseLocation>{
  
  void getData() async{
    //simulate nework request for a username
   String username =  await Future.delayed(Duration(seconds:3),(){
      return 'Yasas';
     }
    );
    
    //simulate nework request for a Bio
    String bio =  await Future.delayed(Duration(seconds:2),(){
      return 'Person Dumb';
     }
    );
     print("${username} === ${bio}");
  }

 @override
 void initState(){
  super.initState();
  getData();
  print("Yasas the beast");
 }



  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.grey[200],
      appBar:AppBar(
        backgroundColor:Colors.blueAccent,
        title:Text("Choose a location"),
        centerTitle:true,
        elevation:0
      ),
      body:Center(
    
      ),
    );
  }
}