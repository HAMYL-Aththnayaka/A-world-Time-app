import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}
 
class _loadingState extends State<loading>{

///String time = 'loading ';
  /* void getTime() async{
   /* var uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    var response  = await http.get(uri);
    Map data = jsonDecode(response.body);
    print(data);
    print("Title - ${data['title']}");
    */

    var uri = Uri.parse('https://world-time-api3.p.rapidapi.com/timezone/Asia/Colombo');

  // 2. The Request with your Keys
  var response = await http.get(uri, headers: {
    'x-rapidapi-key': 'b1503640a7msh3136e0dee6d04efp1644c0jsnbae612c258aa',
    'x-rapidapi-host': 'world-time-api3.p.rapidapi.com',
  });
    Map data = jsonDecode(response.body);
    print(data);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);


    //print("date - ${datetime}");
   // print("offset - ${offset}");

   //date time object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours:int.parse(offset)));
      print("=====now====${now}");
  }
*/

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