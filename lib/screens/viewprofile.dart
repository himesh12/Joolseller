//import 'package:button/setting.dart';
import 'package:flutter/material.dart';
import 'package:seller/screens/editshoppingandbanking.dart';
import 'package:seller/screens/profile.dart';
//import '//package:seller/screens/editpersonalprofile.dart';
//import 'package:seller/screens/editshoppingandbanking.dart';


class ViewprofileWidget extends StatefulWidget {
  //ViewprofileWidget({Key key}) : super(key: key);

  @override
  _ViewprofileWidgetState createState() => _ViewprofileWidgetState();
}

class _ViewprofileWidgetState extends State<ViewprofileWidget> {
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
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileWidget()),
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
                        'Profile',
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                width: 600,
                height: 170,
                decoration: BoxDecoration(
                  color: Color(0x95a1ac),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: Text(
                            'Personal Details',
                                         style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF292727),
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(150, 11, 0, 0),
                              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ViewprofileWidget();
                    }));
                  },
                         child: Container(
                    width:70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    alignment: Alignment(-0.050000000000000044, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        'EDIT',
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
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 15, 0, 0),
                          child: Text(
                            'Name',
                                         style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 10, 0, 0),
                          child: Text(
                            'Vinod Shah',
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
                          padding: EdgeInsetsDirectional.fromSTEB(16, 15, 0, 0),
                          child: Text(
                            'Email',
                                         style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 10, 0, 0),
                          child: Text(
                            'Vinodshah1420@gmail.com',
                                       style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 15, 0, 0),
                          child: Text(
                            'Phone',
                                        style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 10, 0, 0),
                          child: Text(
                            '9384756223',
                                         style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Container(
              width: 600,
              height: 230,
              decoration: BoxDecoration(
 color: Color(0x95a1ac),
               ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                        child: Text(
                          'Shop & Banking Detail',
                                      style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF292727),
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(110, 11, 0, 0),
                        child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return EditshopandbankingWidget();
                    }));
                  },
                        child: Container(
                    width:70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    alignment: Alignment(-0.050000000000000044, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        'EDIT',
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
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 15, 0, 0),
                        child: Text(
                          'Shop Name',
                                    style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: Text(
                          'Jool Fashion',
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
                        padding: EdgeInsetsDirectional.fromSTEB(16, 15, 0, 0),
                        child: Text(
                          'Address',
                                      style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(50, 10, 0, 0),
                        child: Text(
                          'Vinod shah\nC-114 Katawri  Sarai,\nDDA Flats Phase-1\nNew Delhi-110016',
                                   style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 15, 0, 0),
                        child: Text(
                          'Bank',
             style: TextStyle(
                                           fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(75, 10, 0, 0),
                        child: Text(
                          'State Bank Of India',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}