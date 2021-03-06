import 'package:flutter/material.dart';
import 'package:gowallpaper/screens/shopview.dart';
import 'package:gradient_text/gradient_text.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

final List<String> imagesrc = [
  "assets/servicing_cardimage.jpg",
  "assets/service3.jpg",
  "assets/oilservice.jpg",
];
final List<String> offers = [
  " ON CAR SERVICES ",
  " ON ENGINE SERVICES ",
  " ON OIL SERVICES ",
];
final List<String> offersvalue = [
  " 40% OFF ",
  " 10% OFF ",
  " 50% OFF ",
];
final List<String> offercodes = [
  " Code: ABC123 ",
  " Code: DEF456 ",
  " Code: GHI789 ",
];
final List<String> servicesleft = [
  "assets/workshop2.jpg",
  "assets/workshop1.jpg",
  "assets/workshop3.jpg",
];
final List<String> servicesright = [
  "assets/workshop4.jpg",
  "assets/workshop5.jpg",
  "assets/workshop6.jpg",
];
final List<String> servicesnameleft = [
  "Pusat Servis Kereta Kesuma",
  "Pakar Servis Rahim Auto",
  "G AutoTech Servis Kereta",
];
final List<String> servicesnameright = [
  "Pusat Servis Kenderaan Syntium",
  "GM Auto Garage",
  "Azam Maju Services",
];
final List<String> locationright = [
  "Sri Serdang, Selangor",
  "Seri Kembangan, Selangor",
  "Bangi, Selangor",
];
final List<String> distanceright = [
  "2.5 km away",
  "12.0 km away",
  "15.7 km away",
];
final List<String> locationleft = [
  "Serdang, Selangor",
  "Seri Kembangan, Selangor",
  "Puchong, Selangor",
];
final List<String> distanceleft = [
  "3.0 km away",
  "5.7 km away",
  "16.0 km away",
];
int imagesrcindex = 0;

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBC3E3),
      appBar: AppBar(
        backgroundColor: Color(0xFF5C0B68),
        elevation: 1,
        centerTitle: true,
        title: Text("SERVICES",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFD119)),
            textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("PROMOTION",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5C0B68)),
                            textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imagesrc.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width - 40,
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    child: Center(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5.0),
                                        child: Image.asset(
                                          imagesrc[index],
                                          fit: BoxFit.fill,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      offersvalue[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      offers[index],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      offercodes[index],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 2.5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: <Color>[
                                Color(0xFFFFD119),
                                Color(0xFF5C0B68)
                              ]),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text("Nearby Workshop  ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5C0B68)),
                            textAlign: TextAlign.center),
                        Expanded(
                          child: Container(
                            height: 2.5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: <Color>[
                                Color(0xFF5C0B68),
                                Color(0xFFFFD119)   
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      
      //------------------------------------------------------------------------------------
      
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: servicesleft.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: <Widget>[
                            Container(
                              width: (MediaQuery.of(context).size.width - 25) / 2,
                              height: 230,
                              color: Colors.transparent,
                              child: Card(
                                elevation: 5,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ShopView(
                                                            text:
                                                                servicesnameleft[
                                                                    index],
                                                            imgUrl: servicesleft[
                                                                index],
                                                            index: index)));
                                          },
                                          child: Container(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      41) /
                                                  2,
                                              height: 130,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: AssetImage(
                                                    servicesleft[index]),
                                                fit: BoxFit.fill,
                                                alignment: Alignment.topCenter,
                                              )),
                                              child: Text('')),
                                        ),
                                        Container(
                                          width:
                                              (MediaQuery.of(context).size.width -
                                                      41) /
                                                  2,
                                          height: 92,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Center(
                                                child: Text(
                                                  servicesnameleft[index],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Center(
                                                child: Text(
                                                  locationleft[index],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Center(
                                                child: Text(
                                                  distanceleft[index],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ShopView(
                                            text: servicesnameright[index],
                                            imgUrl: servicesright[index],
                                            index: index + 3)));
                              },
                              child: Container(
                                width:
                                    (MediaQuery.of(context).size.width - 25) / 2,
                                height: 230,
                                color: Colors.transparent,
                                child: Card(
                                  elevation: 5,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Container(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      41) /
                                                  2,
                                              height: 130,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: AssetImage(
                                                    servicesright[index]),
                                                fit: BoxFit.fill,
                                                alignment: Alignment.topCenter,
                                              )),
                                              child: Text('')),
                                          Container(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    41) /
                                                2,
                                            height: 92,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Center(
                                                  child: Text(
                                                    servicesnameright[index],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Center(
                                                  child: Text(
                                                    locationright[index],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Center(
                                                  child: Text(
                                                    distanceright[index],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
      //------------------------------------------------------------------------------------
            ],
          ),
        ),
      ),
    );
  }
}
