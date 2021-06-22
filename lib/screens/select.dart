import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gowallpaper/screens/Service.dart';
import 'package:gowallpaper/screens/home.dart';
import 'package:gowallpaper/screens/towing.dart';
import 'package:gowallpaper/services/auth.dart';
//import 'package:youtube/Service.dart';
//import 'package:youtube/info.dart';

class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  final usersRef = FirebaseFirestore.instance.collection('Users');
  final FirebaseAuth auth = FirebaseAuth.instance;
  String uid = '';
  @override
  void initState() {
    final User user = auth.currentUser;
    uid = user.uid;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    return Scaffold(
      backgroundColor: Color(0xFFCBC3E3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton.icon(
            icon: Icon(Icons.person,color:  Color(0xFF5C0B68)),
            
            label: Text('Logout',style: TextStyle(color: Color(0xFF5C0B68)),),
            onPressed: () async {
              await _auth.signOut();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            FutureBuilder<DocumentSnapshot>(
              future: usersRef.doc(uid).get(),
              builder: (BuildContext context,
                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("Something went wrong");
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  Map<String, dynamic> data = snapshot.data.data();
                  return Text(
                      'Hi ' +
                          data['displayName'].toString() +
                          ', \nChoose your option to continue',
                      style: TextStyle(
                          fontFamily: 'Bebas',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5C0B68)),
                      textAlign: TextAlign.center);
                }

                return Text("loading");
              },
            ),
            SizedBox(height: 20),
            Image.asset(
              "assets/carservice.gif",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.warning,
                              size: 45,
                              color: Colors.pink[700],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Assistance",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServicePage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.car_repair,
                              size: 45,
                              color: Colors.green[700],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Service",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Towing()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.build,
                              size: 45,
                              color: Colors.blue[700],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Towing",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
