import 'package:flutter/material.dart';
import 'package:gowallpaper/screens/home.dart';
import 'package:geolocator/geolocator.dart';
import 'package:gowallpaper/screens/wallet.dart';
import 'package:provider/provider.dart';

class Towing extends StatefulWidget {
  @override
  _TowingState createState() => _TowingState();
}

class _TowingState extends State<Towing> {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  Position _currentPosition;
  String _currentAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBC3E3),
      appBar: AppBar(
        backgroundColor: Color(0xFF5C0B68),
        elevation: 0,
        centerTitle: true,
        title: Text("TOWING",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFD119)),
            textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121)),
                textAlign: TextAlign.center),
            Image.asset(
              "assets/towing.gif",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width-50,
            ),
            SizedBox(
              height: 35,
            ),
            Column(
              children: <Widget>[
                if (_currentPosition != null)
                  Text(
                    'Your Current Location is:\n'+_currentAddress,
                    style: TextStyle(
                        color: Colors.black, fontSize: 20, fontFamily: 'Bebas'),
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 13,
                child: RaisedButton.icon(
                  icon: Icon(Icons.location_on),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.purple[700],
                  textColor: Colors.white,
                  label: Text('Get Your Current Location'),
                  onPressed: () {
                    _getCurrentLocation();
                  },
                ),
              ),
            ),
            
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 13,
              child: RaisedButton.icon(
                icon: Icon(Icons.help_center),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.purple[700],
                textColor: Colors.white,
                label: Text('Towing Near Me'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wallet()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
            "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }
}


 //body: Column(
 //           mainAxisAlignment: MainAxisAlignment.center,
   //         crossAxisAlignment: CrossAxisAlignment.center,
     //       children: <Widget>[
       //       if (_currentPosition != null)
       //       Text(
       //       _currentAddress,
        //     style: TextStyle(
        //       color: Colors.white, fontSize: 50, fontFamily: 'Bebas'),
         // textAlign: TextAlign.center,
         // ),