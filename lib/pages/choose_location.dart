import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLoactionState createState() => _ChooseLoactionState();
}
 
class _ChooseLoactionState extends State<ChooseLocation>{
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
      body:Text('Choose Location Screen')
    );
  }
}