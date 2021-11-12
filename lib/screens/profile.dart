import 'package:flutter/material.dart';
import 'package:seller/screens/Home.dart';
import 'package:seller/screens/feedback.dart';
import 'package:seller/screens/loginscreen.dart';
import 'package:seller/screens/viewprofile.dart';



class ProfileWidget extends StatefulWidget {
 // ProfileWidget({Key key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
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
                color: Colors.white10,
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
            Divider(
              thickness: 3,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                  child: Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/574/600',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 39, 0, 0),
                  child: Container(
                    width: 200,
                    height: MediaQuery.of(context).size.height * 0.09,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 95, 0),
                          child: Text(
                            'Vinod shah',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 75, 0),
                          child: Text(
                            'Vinod@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 75, 0),
                        child: InkWell(
                onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewprofileWidget()),
                     ); },   
              
                  child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.transparent,
                      )
                    ],
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  alignment: Alignment(-0.050000000000000044, 0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Text(
                      'VIEW/EDIT PROFILE',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color: Colors.blue,
                          fontSize: 12),
                    ),
                  ),
                ),
                        ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Container(
                width: 360,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0xFFB5AFAF),
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 20, 0, 0),
                          child: Icon(
                            Icons.star_outline,
                            color: Color(0xFF757575),
                            size: 29,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                          child: Text(
                            'Feedback',
                               style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(190, 20, 0, 0),
                              child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FeedbackWidget()),
                     ); },
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xFF757575),
                            size: 29,
                          ),
                        ),
                        ),
                      ],
                    ),
                    Divider(
                      indent: 30,
                      endIndent: 15,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(29, 2, 0, 0),
                          child: Icon(
                            Icons.headset_mic,
                            color: Color(0xFF757575),
                            size: 29,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            'Customer Support',
                               style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(130, 0, 0, 0),
                          child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FeedbackWidget()),
                     ); },
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xFF757575),
                            size: 29,
                          ),
                        ),
                        ),
                      ],
                    ),
                    Divider(
                      indent: 30,
                      endIndent: 15,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 2, 0, 0),
                          child: Icon(
                            Icons.person,
                            color: Color(0xFF757575),
                            size: 29,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            'About Us',
                               style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(184, 0, 0, 0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xFF757575),
                            size: 29,
                          ),
                        )
                        
                      ],
                    )
                  ],
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(30, 140, 30, 0),
              child: InkWell(
                onTap: () {
                 LoginScreen();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white10,
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
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Text(
                      'SIGNOUT',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color:Color(0xFFA7A5A5),
                          fontSize: 19),
                          
                    ),
                  ),
                ),
              )),
          ],
        ),
      ),
    );
  }
}
