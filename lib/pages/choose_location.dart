import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLoactionState createState() => _ChooseLoactionState();
}
 
class _ChooseLoactionState extends State<ChooseLocation>{
  


  @override 
  Widget build(BuildContext context){
    return Container(
      decoration:BoxDecoration(
        image:DecorationImage(
          image: AssetImage('assets/day.jpg'),
          fit: BoxFit.cover, // to cover the entire background
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        //backgroundColor:Colors.grey[200],
        appBar:AppBar(
          backgroundColor:Colors.blueAccent,
          title:Text("Choose a location"),
          centerTitle:true,
          elevation:0
        ),
        body:Center(
      
        ),
      ),
    );
  }
}