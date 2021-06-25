import 'package:flutter/material.dart';
import 'package:gowallpaper/screens/profile.dart';
import 'package:gowallpaper/screens/profileworkshop.dart';

class WorkshopOwner extends StatelessWidget {
  //const WorkshopOwner({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton.icon(
            icon: Icon(Icons.person, color: Color(0xFF5C0B68)),
            label: Text(
              'Profile',
              style: TextStyle(color: Color(0xFF5C0B68)),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ProfileWorkshop()));
            },
          ),
        ],
        ),
        body: Container(
          child: Text('Workshop Owner',style: TextStyle(fontSize: 50),),
          
        ),
      ),
    );
  }
}