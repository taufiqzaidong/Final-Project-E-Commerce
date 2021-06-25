import 'package:flutter/material.dart';
import 'package:gowallpaper/services/auth.dart';

class ProfileWorkshop extends StatefulWidget {
  //const ProfileWorkshop({ Key? key }) : super(key: key);

  @override
  _ProfileWorkshopState createState() => _ProfileWorkshopState();
}

class _ProfileWorkshopState extends State<ProfileWorkshop> {
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    return Container(
      child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 13,
                  child: RaisedButton.icon(
                    icon: Icon(Icons.logout),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.purple[400],
                    textColor: Colors.white,
                    label: Text('Log Out'),
                    onPressed: () async {
                      await _auth.signOut();
                      Navigator.pop(context);
                    },
                  ),
                ),
    );
  }
}