import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/Tabs/Dairy.dart';
import 'package:flutter_grocery_app/Tabs/Fruits.dart';
import 'package:flutter_grocery_app/Tabs/Nuts.dart';
import 'package:flutter_grocery_app/Tabs/Vegetables.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.menu, color: Colors.black),
                Spacer(),
                Icon(Icons.shopping_cart, color: Colors.black),
              ],
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Search Here",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          TabBar(
            controller: tabcontroller,
            indicatorColor: Colors.lightGreen,
            indicatorWeight: 3.0,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Fruits",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Tab(
                child: Text(
                  "Vegetables",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Tab(
                child: Text(
                  "Nuts & Seeds",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Tab(
                child: Text(
                  "Dairy",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: TabBarView(controller: tabcontroller, children: <Widget>[
                Fruits(),
                Vegetables(),
                Nuts(),
                Dairy(),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
