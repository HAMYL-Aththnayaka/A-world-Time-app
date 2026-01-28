import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}
 
class _loadingState extends State<loading>{

  void getData() async{
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    var response  = await http.get(uri);
    Map data = jsonDecode(response.body);
    print(data);
    print("Title - ${data['title']}");
  }

 @override
 void initState(){
  super.initState();
  getData();
  
 }


 @override 
  Widget build(BuildContext context){
    return Scaffold(
      body:Text('Loading Screen')
    );
  }
}