import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    // Check if data is empty before pulling from arguments
    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;

    // Set background image based on time of day
    String bImage = data['isDaytime'] ? 'day2.jpg' : 'night.jpg';
    Color? bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgColor, // Smooths out edge transitions
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: ()async {
                   dynamic res = await Navigator.pushNamed(context, '/location');
                  setState((){
                    data={
                      'time':res['time'],
                      'location':res['location'],
                      'isDaytime':res['isDaytime'],
                      'flag':res['flag'],
                    };
                  });
              
                  },
                  icon: Icon(
                    Icons.edit_location, 
                    color: Colors.grey[300]
                  ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      
                      backgroundColor: Colors.grey[450], // Corrected placement
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: const TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.white, // Better visibility
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(
                  data['time'],
                  style: const TextStyle(
                    fontSize: 66.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}