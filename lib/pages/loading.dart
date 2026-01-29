import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}
 
class _loadingState extends State<loading>{

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Colombo', flag: 'g', url: 'Asia/Colombo');
    await instance.getTime();
    Navigator.pushReplacementNamed(context,'/home',arguments:{
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.time,
      'isDaytime':instance.isDaytime,
    });
    
  }

 @override
 void initState(){
  super.initState();
 // getTime();
   setupWorldTime();
 }


 @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.blue[860],
      body:Center(
              child:SpinKitCircle(
                color:Colors.white,
                size:50.0
              )
      ),
    );
  }
}