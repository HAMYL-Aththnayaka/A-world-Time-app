import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WorldTime {
  String location; //location 
  String time = ''; //the time 
  String flag; //url to flag icon
  String url; //location url for api 
  bool isDaytime = true; //true or false if daytime or not

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      final apiKey = dotenv.env['RAPIDAPI_KEY']!;
      final apiHost = dotenv.env['RAPIDAPI_HOST']!;

      final uri = Uri.parse('https://world-time-api3.p.rapidapi.com/timezone/$url');

      final response = await http.get(
        uri,
        headers: {
          'x-rapidapi-key': apiKey,
          'x-rapidapi-host': apiHost,
        },
      );

      if (response.statusCode != 200) {
        throw Exception('API Error: ${response.statusCode}');
      }

      final data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'];

      DateTime now = DateTime.parse(datetime);
      int offsetHours = int.parse(offset.substring(1, 3));
      int offsetMinutes = int.parse(offset.substring(4, 6));

      if (offset.startsWith('+')) {
        now = now.add(Duration(hours: offsetHours, minutes: offsetMinutes));
      } else {
        now = now.subtract(Duration(hours: offsetHours, minutes: offsetMinutes));
      }

      isDaytime = now.hour >= 6 && now.hour < 20;
      time = DateFormat.jm().format(now);

    } catch (e) {
      print('WorldTime error: $e');
      time = 'Could not get time data';
    }
  }
}
