import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

final List<String> address = [
  "Lot 738-B Batu 23 1, 2, Kampung Rinching Hulu, \n43500 Serdang, Selangor",
  "Jalan 6/10, Kawasan Perindustrian Seri Kembangan, \n43300 Seri Kembangan, Selangor",
  "Kampung Paya Jaras Hilir, \n40150, Puchong, Selangor",
  "No. 24, Jalan Sr 2/5, Taman Serdang Raya, Selangor, \n43300 Sri Serdang",
  " 8, Jalan Besar, Seri Kembangan, \n43300, Seri Kembangan, Selangor",
  "Jalan 15/1A, Seksyen 15, \n43650 Bangi, Selangor"
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

  static const List<double> initialRating = [4.5, 3, 5, 4.5, 2.5, 1.5];

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
                    borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF5C0B68),
                      image: DecorationImage(
                          image: AssetImage(imgUrl), fit: BoxFit.contain)),
                  child: Center(
                      child: Text(
                    '',
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            SizedBox(height: 10),
            SmoothStarRating(
              size: 40.0,
              color: Color(0xFF9000FE),
              rating: initialRating[index],
              onRated: (double value) {
                debugPrint('Image no. $index was rated $value stars!!!');
              },
              borderColor: Colors.purple[700],
              isReadOnly: true,
            ),
            SizedBox(height: 10),
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
                      address[index],
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF9000FE)),
              height: 50,
              width: MediaQuery.of(context).size.width -25,
              child: RaisedButton(
                elevation: 0,
                onPressed: () {},
                color: Colors.transparent,
                child: Text(
                  "Reques for A Car Service",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
