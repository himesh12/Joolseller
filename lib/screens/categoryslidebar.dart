import 'package:flutter/material.dart';
class CategorysidebarWidget extends StatefulWidget {
//  CategorysidebarWidget({Key key}) : super(key: key);

  @override
  _CategorysidebarWidgetState createState() => _CategorysidebarWidgetState();
}

class _CategorysidebarWidgetState extends State<CategorysidebarWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                  child: Text(
                    'Hi Vinod',
                               style:TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF757575),
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
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
    Icons.close,
    color: Color(0xFF180B0B),
    size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 266, 0),
              child: Text(
                'Dashboard',
                           style:TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF757575),
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 24,
            ),
            Padding(
               padding: EdgeInsetsDirectional.fromSTEB(0, 15, 275, 0),
              child: Text(
                'Inventory',
                        style:TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF757575),
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 24,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 215, 0),
              child: Text(
                'Manager Orders',
                              style:TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF757575),
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 24,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 180, 0),
              child: Text(
                'Campaign Manager',
                                style:TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF757575),
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 24,
            ),
            Padding(
               padding: EdgeInsetsDirectional.fromSTEB(0, 10, 280, 0),
              child: Text(
                'Reports',
                             style:TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF757575),
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 24,
            ),
            Padding(
               padding: EdgeInsetsDirectional.fromSTEB(0, 10, 280, 0),
              child: Text(
                'Profile',
                               style:TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF757575),
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 24,
            ),
            Padding(
               padding: EdgeInsetsDirectional.fromSTEB(0, 10, 280, 0),
              child: Text(
                'Support',
                style:TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF757575),
                  fontSize: 20,
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 24,
            )
          ],
        ),
      ),
    );
  }
}