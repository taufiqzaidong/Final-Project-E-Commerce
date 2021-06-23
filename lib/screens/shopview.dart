import 'package:flutter/material.dart';

final List<String> addressleft = [
  "Lot 738-B Batu 23 1, 2, Kampung Rinching Hulu, 43500 Semenyih, Selangor",
  "assets/service3.jpg",
  "assets/oilservice.jpg",
];

class ShopView extends StatelessWidget {
  final String text;
  final String imgUrl;
  final int index;
  ShopView(
      {Key key,
      @required this.text,
      @required this.imgUrl,
      @required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBC3E3),
      appBar: AppBar(
        backgroundColor: Color(0xFF5C0B68),
        elevation: 0,
        centerTitle: true,
        title: Text("WORKSHOP",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFD119)),
            textAlign: TextAlign.center),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                  height: (MediaQuery.of(context).size.height) / 2,
                  width: (MediaQuery.of(context).size.width - 25),
                  decoration: BoxDecoration(
                      color: Color(0xFF5C0B68),
                      image: DecorationImage(
                          image: AssetImage(imgUrl), fit: BoxFit.contain)),
                  child: Center(
                      child: Text(
                    '',
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      addressleft[index],
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
