import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    // 1. Cast the arguments to a Map
    // 2. Use a conditional check so data isn't reset if the widget rebuilds
    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location, color: Colors.grey[300]),
              label: Text('Edit Location'), 
            ),
            const SizedBox(height: 20.0),
            // Example of using the data
           Text(
                '${data['location']} - ${data['time']}',
                style: TextStyle(
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
          ],
        ),
      ),
    );
  }
}