import 'package:flutter/material.dart';
import 'package:seller/screens/Dashboard.dart';
import 'package:seller/screens/Managerorder.dart';
import 'package:seller/screens/Shipping.dart';
import 'package:seller/screens/product.dart';
import 'package:seller/screens/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final int initial;
  HomeScreen({this.initial: 1});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool pointtable = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  // ignore: unused_element
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;

      pointtable = false;
    });
  }

  @override
  void initState() {
    super.initState();
    pointtable = false;
  }

  List<Widget> _options = <Widget>[
    DashboardWidget(),
    ManageorderWidget(),
    ShippingWidget(),
    ProductWidget(),
    ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _options.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(      color: Color(0x95a1ac), blurRadius: 2)],
        ),
        height: 70,
        margin: EdgeInsets.only(),
        child: BottomAppBar(
            child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;

                          pointtable = false;
                        });
                      },
                      child: Container(
                       
                          child: Icon(
                            Icons.home_outlined,
                           size: 30,
                            color: _selectedIndex == 0
                                ? Colors.orange
                                : Colors.black,
                                
                          ),
                          
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
               child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 1;

                        pointtable = false;
                      });
                    },
                    child: Container(
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 30,
                          color: _selectedIndex == 1
                              ?Colors.orange
                              : Colors.black,
                        ),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            ),
            Expanded(
               child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 2;

                        pointtable = false;
                      });
                    },
                    child: Container(
                        child: Icon(
                          Icons.local_shipping_outlined,
                          size: 30,
                          color: _selectedIndex == 2
                              ? Colors.orange
                              : Colors.black,
                        ),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            ),
            Expanded(
               child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 3;

                        pointtable = false;
                      });
                    },
                    child: Container(
                        child: Icon(
                          Icons.inventory_2_outlined,
                          size: 30,
                          color: _selectedIndex == 3
                              ? Colors.orange
                              : Colors.black,
                        ),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 4;

                          pointtable = false;
                        });
                      },
                      child: Container(
                        child: Icon(
                          Icons.settings_outlined,
                          size: 29,
                          color: _selectedIndex == 4
                              ? Colors.orange
                              : Colors.black,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}