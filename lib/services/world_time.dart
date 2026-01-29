import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the UI
  String time = ''; //the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint
  bool isDaytime = true; //true or false if daytime or not

  WorldTime({
    required this.location,
    required this.flag,
    required this.url
      });

  Future<void> getTime() async {
    try {
      var uri = Uri.parse('https://world-time-api3.p.rapidapi.com/timezone/$url');

      var response = await http.get(uri, headers: {
        'x-rapidapi-key': 'b1503640a7msh3136e0dee6d04efp1644c0jsnbae612c258aa',
        'x-rapidapi-host': 'world-time-api3.p.rapidapi.com',
      });

      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'];

      DateTime now = DateTime.parse(datetime);
      int offsetHours = int.parse(offset.substring(1, 3));
      int offsetMinutes = int.parse(offset.substring(4, 6));

      if (offset.contains('+')) {
      now = now.add(Duration(hours: offsetHours, minutes: offsetMinutes));
    } else {
      now =now.subtract(Duration(hours: offsetHours, minutes: offsetMinutes));
    }
      //set the time property
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false; // 6 am - 8 pm
      time = DateFormat.jm().format(now);



    } catch (e) {
      print('Caught error: $e');
      time = 'Could not get time data';
    }
  }
}

//WorldTime instance = WorldTime(location: 'Colombo', flag: 'g', url: 'Asia/Colombo');
//instance.getTime();