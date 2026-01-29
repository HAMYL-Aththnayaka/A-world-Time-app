import 'package:flutter/material.dart';
import 'package:world_time_app/pages/home.dart';
import 'package:world_time_app/pages/loading.dart';
import 'package:world_time_app/pages/choose_location.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';



void main() async {
 WidgetsFlutterBinding.ensureInitialized();
await dotenv.load(fileName: ".env");


  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
   initialRoute:'/',
    routes:{
      '/':(context)=>loading(),
      '/home':(context)=>Home(),
      '/location':(context)=>ChooseLocation(),
    }
  ));
}
