import 'package:flutter/material.dart';
import 'package:gowallpaper/widgets/title_appbar.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: titleAppBar('Care', 'Line'),
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.purple[400],
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Your Request Has Been Sent To The Nearest Towing Company",
                    style: TextStyle(fontSize: 25, color: Colors.grey[600]),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "We will call you in 5 minutes!!",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Your number: 012-234xx56",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Image.asset('assets/tow.jpg'),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "SJ SMART SERVICES, LOT 10 TAMAN IMPIAN, SERI KEMBANGAN, 43400 SERDANG SELANGOR ",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text(
                    "013-9879894 ",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 60,
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.purple[400],
                  child: Text('Resend the Request'),
                  onPressed: () {},
                )
              ],
            )));
  }
}
