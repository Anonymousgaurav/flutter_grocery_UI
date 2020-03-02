import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/second.dart';

import 'SizeConfig.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        _FruitCard("Apple", "assets/apple.png", "₹90",
                            0xffF7DFB9, 0xffFAF0DA),
                        SizedBox(height: 20.0),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
                          },



                          child: _FruitCard("Mango", "assets/mango.png", "₹120",
                              0xffC4D4A3, 0XffE0E8CF),
                        ),
                        SizedBox(height: 20.0),
                        _FruitCard("Orange", "assets/orange.png", "₹150",
                            0xffF6E475, 0XffF9EFB0),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xffECEDF1),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "A Spring Surprise",
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "70% OFF",
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.green),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Foody Surprise",
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Use Above Promo Code",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        _FruitCard("Grapes", "assets/grapes.png", "90",
                            0xffFFC498, 0XffFDDCC1),
                        SizedBox(height: 20.0),
                        _FruitCard("Papaya", "assets/strawberry.png", "90",
                            0xffF0AEAF, 0XffF8C6CA),
                        SizedBox(height: 20.0),
                        _FruitCard("Orange", "assets/kiwi.jpg", "90",
                            0xffF7DFB9, 0xffFAF0DA),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _FruitCard(String name, String asset, String rate, int color, int color2) {
    return Container(
      width: 150.0,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(color2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.add, color: Colors.grey)),
            ),
          ),
          Center(
            child: Image.asset(
              asset,
              fit: BoxFit.contain,
              height: 50.0,
              width: 50.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              name,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 5.0),
            child: Text(
              "Manjeera Trinity Corporate",
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      rate,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      "Per Kilogram",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 11.0,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "View Price",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 11.0,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          )
        ],
      ),
    );
  }
}
