import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
class ChoseLocation extends StatefulWidget {
  @override
  _ChoseLocationState createState() => _ChoseLocationState();

}
class _ChoseLocationState extends State<ChoseLocation> {
  List<WorldTime> locations=[
    WorldTime(url:'Europe/London',location: 'London',flag: 'uk.png'),
    WorldTime(url:'Europe/Berlin',location: 'Athens',flag: 'greece.png'),
    WorldTime(url:'Africa/Cairo',location: 'Cairo',flag: 'egypt.png'),
    WorldTime(url:'Africa/Nairobi',location: 'Nairobi',flag: 'kenya.png'),
    WorldTime(url:'America/Chicago',location: 'Chicago',flag: 'Chicago.png'),
    WorldTime(url:'America/New_York',location: 'New_York',flag: 'usa.png'),
    WorldTime(url:'Asia/Seoul',location: 'Seoul',flag: 'south_korea.png'),
    WorldTime(url:' Asia/Jakarta',location: 'Jakarta',flag: 'indonesia.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Chose a Location'),
        backgroundColor: Colors.black12,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
        return Card(
          child: ListTile(
            onTap: (){// like on pressed method

            },
            title: Text(locations[index].location),
            leading:CircleAvatar(
            backgroundImage: AssetImage('assets/${locations[index].flag}'),
            ) ,// circle Avater round image// means keh ye sb se pehle ai ge us kolead kare ge
          ),

    );
        },
      ),
    );
  }
}
