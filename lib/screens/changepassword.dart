import 'package:flutter/material.dart';
import 'package:seller/screens/Home.dart';

class EnternewpasswordWidget extends StatefulWidget {
  EnternewpasswordWidget(Map map);

  //EnternewpasswordWidget({Key key}) : super(key: key);

  @override
  _EnternewpasswordWidgetState createState() => _EnternewpasswordWidgetState();
}

class _EnternewpasswordWidgetState extends State<EnternewpasswordWidget> {
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor:Colors.white,
        automaticallyImplyLeading: false,
        leading: 
         Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 220, 0),
          child: Text(
            'Back',
            style:TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontSize: 20,
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text(
              'Change password',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 29,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color:Color(0x95a1ac),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color(0xFF95A1AC),
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 4, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                              child: TextFormField(
                                controller: textController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Enter your password',
                                  hintStyle:
                                      TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                            size: 24,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
           Padding(
          padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
          child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return HomeScreen();
                    }));
                  },
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color:Color(0xFF1F1F1F),
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
            alignment: Alignment(-0.050000000000000044,0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text(
                'Continue',
                style: TextStyle(
                  fontFamily: 'poppins',
                  color:Colors.white,
                  fontSize: 16 
                  ),
              ),
          ),
        )
        )
           ),],
      ),
    );
  }
 
  }

