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
   //  print(data['isDaytime']);
  
  String bImage = data["isDaytime"] ? 'day2.jpg':'night.jpg';

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration:BoxDecoration(
            image:DecorationImage(
              image: AssetImage('assets/${bImage}'),
              fit:BoxFit.cover
              )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,120.0,0,0),
              child: Column(  
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location, color: Colors.grey[300]),
                  label: Text('Edit Location',
                    style: TextStyle(
                        backgroundColor:Colors.grey[500],
                    ), 
                  ),
                ),
                const SizedBox(height: 20.0),
                // Example of using the data
               Row(
                mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${data['location']}',
                        style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                    ),
                  ),
                  ]
               ),SizedBox(height:20.0),
               Text(
                data['time'],
                style:TextStyle(
                  fontSize:66.0
                )
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}