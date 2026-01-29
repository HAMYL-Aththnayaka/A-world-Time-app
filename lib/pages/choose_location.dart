import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLoactionState createState() => _ChooseLoactionState();
}
 
class _ChooseLoactionState extends State<ChooseLocation>{
  
 List<WorldTime> locations = [
  // Europe
  WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
  WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'germany.png'),
  WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'france.png'),
  WorldTime(url: 'Europe/Rome', location: 'Rome', flag: 'italy.png'),
  WorldTime(url: 'Europe/Madrid', location: 'Madrid', flag: 'spain.png'),
  
  // Asia
  WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'sri_lanka.png'), // Added Sri Lanka
  WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'uae.png'),
  WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
  WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'japan.png'),
  WorldTime(url: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'hong_kong.png'),
  WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'india.png'),
  WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'singapore.png'),
  WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'thailand.png'),

  // Americas
  WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
  WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
  WorldTime(url: 'America/Los_Angeles', location: 'Los Angeles', flag: 'usa.png'),
  WorldTime(url: 'America/Mexico_City', location: 'Mexico City', flag: 'mexico.png'),
  WorldTime(url: 'America/Sao_Paulo', location: 'Sao Paulo', flag: 'brazil.png'),
  WorldTime(url: 'America/Toronto', location: 'Toronto', flag: 'canada.png'),
  WorldTime(url: 'America/Argentina/Buenos_Aires', location: 'Buenos Aires', flag: 'argentina.png'),

  // Africa
  WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
  WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
  WorldTime(url: 'Africa/Johannesburg', location: 'Johannesburg', flag: 'south_africa.png'),
  WorldTime(url: 'Africa/Lagos', location: 'Lagos', flag: 'nigeria.png'),
  WorldTime(url: 'Africa/Casablanca', location: 'Casablanca', flag: 'morocco.png'),

  // Oceania
  WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'australia.png'),
  WorldTime(url: 'Pacific/Auckland', location: 'Auckland', flag: 'new_zealand.png'),
];



  @override 
  Widget build(BuildContext context){
    return Container(
      decoration:BoxDecoration(
        image:DecorationImage(
          image: AssetImage('assets/Trvl.jpg'),
          fit: BoxFit.cover, // to cover the entire background
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        //backgroundColor:Colors.grey[200],
        appBar:AppBar(
          backgroundColor:Colors.blueAccent,
          title:Text("Choose a location"),
          centerTitle:true,
          elevation:0
        ),
        body:ListView.builder(
          itemCount:locations.length,
          itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical:3.0,
                horizontal:15
                ),
              child: Card(
                child:ListTile(
                  onTap:(){
              
                  },
                  title:Text(
                    locations[index].location
                  ),
                  leading:CircleAvatar(
                    backgroundImage:AssetImage('assets/countries/${locations[index].flag}')
                  )
                )
              ),
            );
          }
           )
      
        
      ),
    );
  }
}