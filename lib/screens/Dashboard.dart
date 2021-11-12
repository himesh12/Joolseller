
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:seller/screens/categoryslidebar.dart';


class DashboardWidget extends StatefulWidget {
  //DashboardWidget({Key key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child:SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
             Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CategorysidebarWidget()),
                     ); },
                  child: Container(
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    alignment: Alignment(-0.050000000000000044, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(05, 15, 0, 15),
                      child:  Icon(
    Icons.filter_list,
    color: Color(0xFF180B0B),
    size: 60,
                        ),
                      ),
                    ),
                  ),
                ),
              
                   
                    
                     
                
               Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assests/images/pic4.png',
                      ).image,
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [Divider()],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                            color: Color(0x95a1ac),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 50, 0),
                            child: Text(
                              'Total sales',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              'INR 500,000',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                              color: Color(0x95a1ac),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              'Open Orders',
                               style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Text(
                              '10',
                             style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                              color: Color(0x95a1ac),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                            child: Text(
                              'Total order',
                                style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 40, 0),
                            child: Text(
                              '120',
                               style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(27, 20, 0, 0),
              child: Container(
                width: 350,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Image.asset(
                  'assests/images/pic3.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
      ),  );
  }
}
