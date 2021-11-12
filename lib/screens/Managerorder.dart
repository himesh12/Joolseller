import 'package:flutter/material.dart';
import 'package:seller/screens/Beginfullfillment.dart';
// ignore: unused_import
import 'package:seller/screens/Dashboard.dart';
import 'package:seller/screens/Home.dart';

class ManageorderWidget extends StatefulWidget {
 // ManageorderWidget({Key key}) : super(key: key);

  @override
  _ManageorderWidgetState createState() => _ManageorderWidgetState();
}

class _ManageorderWidgetState extends State<ManageorderWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 600,
              height: 50,
              decoration: BoxDecoration(
        color:Color(0x95a1ac),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: InkWell(
                                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()),
                     ); },

                    child: Icon(
                      Icons.keyboard_backspace,
                      color: Color(0xFF857F7F),
                      size: 40,
                    ),
                  ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      'Manage Orders',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: DefaultTabController(
                length: 4,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.orange,
                      tabs: [
                        Tab(
                          text: 'All Orders',
                        ),
                        Tab(
                          text: 'Pending',
                        ),
                        Tab(
                          text: 'Shipped',
                        ),
                        Tab(
                          text: 'Cancelled',
                        )
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
            Container(
              width: 600,
              height: 180,
              decoration: BoxDecoration(
                      color:Color(0x95a1ac),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 240, 0),
                    child: Text(
                      'Order #012456TD',
                              style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 180, 0),
                    child: Text(
                      'Blue fashion jewellery',
                          style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                        child: Text(
                          'Order  Date',
                                     style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                        child: Text(
                          '20 March 2021',
                                      style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                        child: Text(
                          'Hello World',
                                    style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                        child: Text(
                          '6',
                                    style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                        child: Text(
                          'Price',
                                      style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(60, 5, 0, 0),
                        child: Text(
                          'INR 500',
                                    style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(19, 10, 0, 0),
                        child: Text(
                          'Pending',
                                style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF830606),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      
              Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(17, 10, 0, 0),
                         child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return BeginFullfillmentWidget();
                    }));
                  },
                        child: Container(
                    width: 180,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0xFFA7A5A5),
                        width: 1,
                      ),
                    ),
                    alignment: Alignment(-0.050000000000000044, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        'BEGIN FULFILLMENT',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 12,
                          
                        ),
                      ),
                    ),
                  ),
                      )
              ),
                     ] ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
              width: 600,
              height: 180,
              decoration: BoxDecoration(
                      color:Color(0x95a1ac),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 240, 0),
                    child: Text(
                      'Order #012456TD',
                              style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 180, 0),
                    child: Text(
                      'Blue fashion jewellery',
                          style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                        child: Text(
                          'Order  Date',
                                     style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                        child: Text(
                          '20 March 2021',
                                      style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                        child: Text(
                          'Hello World',
                                    style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                        child: Text(
                          '6',
                                    style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                        child: Text(
                          'Price',
                                      style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(60, 5, 0, 0),
                        child: Text(
                          'INR 500',
                                    style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(19, 10, 0, 0),
                        child: Text(
                          'Shipped',
                                style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(17, 10, 0, 0),
                         child: InkWell(
                  onTap: () {
                   
                  },
                        child: Container(
                    width: 180,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0xFFA7A5A5),
                        width: 1,
                      ),
                    ),
                    alignment: Alignment(-0.050000000000000044, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        'DOWNLOAD INVOICE',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 12,
                          
                        ),
                      ),
                    ),
                  ),
                      ),
                      ),
                      
                    ],
                  )
                ],
              ),
            ),
             ) ],
        ),
      ),
          
            );
        
        
       }
}
