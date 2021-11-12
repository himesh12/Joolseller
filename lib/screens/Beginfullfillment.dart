//import 'package:button/wallet.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:seller/screens/Shipping.dart';
// ignore: unused_import
import 'package:seller/screens/seller.dart';
//import 'package:seller/screens/Shipping.dart';
//import 'package:seller/screens/Shipping.dart';
class BeginFullfillmentWidget extends StatefulWidget {
  //BeginFullfillmentWidget({Key key}) : super(key: key);

  @override
  _BeginFullfillmentWidgetState createState() =>
      _BeginFullfillmentWidgetState();
}

class _BeginFullfillmentWidgetState extends State<BeginFullfillmentWidget> {
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
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                 color: Color(0x95a1ac),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                     },
                  child: Container(
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    alignment: Alignment(-0.050000000000000044, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child:  Icon(
    Icons.arrow_back_sharp,
    color: Color(0xFF180B0B),
    size: 40,
                        ),
                      ),
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
            ),
            Divider(),
            Container(
              width: 600,
              height: 140,
              decoration: BoxDecoration(
                  color: Color(0x95a1ac),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 320, 0),
                    child: Text(
                      'From',
                        style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF292727),
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 190, 0),
                    child: Text(
                      'Vinod Shah\nC-114 Katawari Sarai,\nDDA Flats Phase-1\nNew Delhi-110066',
                         style: TextStyle(
                           fontSize: 19,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Container(
              width: 600,
              height: 150,
              decoration: BoxDecoration(
                 color: Color(0x95a1ac),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 140, 0),
                      child: Text(
                        'To (Shipping Address)',
                            style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF292727),
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 180, 0),
                      child: Text(
                        'Vinod Shah\nC-114 Katawari Sarai,\nDDA Flats Phase-1\nNew Delhi-110066',
                            style: TextStyle(
                              fontSize: 19,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              width: 600,
              height: 200,
              decoration: BoxDecoration(
                 color: Color(0x95a1ac),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 170, 0),
                    child: Text(
                      'Order #012456TD',
                         style: TextStyle(
                           fontSize: 23,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 170, 0),
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
                ]),
                
            ),
                  
                  
                    
                      Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 3, 0),
                                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
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
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 15),
                      child: Text(
                        'CREATE SHIPPING',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
             
          
        
          ],
                
        ),
             ), );
    
    
  }
}
