import 'package:flutter/material.dart';

class RequestService extends StatelessWidget {
  //const RequestService({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBC3E3),
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Text('CHOOSE A SERVICE',
                    style: TextStyle(
                        fontFamily: 'Bebas',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5C0B68)))),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Column(children: <Widget>[
                    Container(
                      child: Text(''),
                      width: (MediaQuery.of(context).size.width - 25) / 2,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/wheel.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 41) / 2,
                      height: 92,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Wheel Service',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              'RM 50',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Container(
                              width: 120,
                              height: 30,
                              child: RaisedButton(
                                elevation: 0,
                                onPressed: () {
                                },
                                color: Colors.purple,
                                child: Text(
                                  "SELECT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                SizedBox(width: 5),
                Card(
                  child: Column(children: <Widget>[
                    Container(
                      child: Text(''),
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/engineservice.png"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 41) / 2,
                      height: 92,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Engine Service',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              'RM 50',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Container(
                              width: 120,
                              height: 30,
                              child: RaisedButton(
                                elevation: 0,
                                onPressed: () {
                                },
                                color: Colors.purple,
                                child: Text(
                                  "SELECT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
/*************************************************************************************************************************/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Column(children: <Widget>[
                    Container(
                      child: Text(''),
                      width: (MediaQuery.of(context).size.width - 25) / 2,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)
                          ),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/caroil.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 41) / 2,
                      height: 92,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Oil Service',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              'RM 50',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Container(
                              width: 120,
                              height: 30,
                              child: RaisedButton(
                                elevation: 0,
                                onPressed: () {
                                },
                                color: Colors.purple,
                                child: Text(
                                  "SELECT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                SizedBox(width: 5),
                Card(
                  child: Column(children: <Widget>[
                    Container(
                      child: Text(''),
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      height: 150,
                      decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)
                          ),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/brakeservice.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width - 41) / 2,
                      height: 92,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Brake Service',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              'RM 50',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Container(
                              width: 120,
                              height: 30,
                              child: RaisedButton(
                                elevation: 0,
                                onPressed: () {
                                },
                                color: Colors.purple,
                                child: Text(
                                  "SELECT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            )
          ]),
    );
  }
}
