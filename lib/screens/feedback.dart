import 'package:flutter/material.dart';
import 'package:seller/services/feedbackapi.dart';

class FeedbackWidget extends StatefulWidget {
  //FeedbackWidget({Key key}) : super(key: key);

  @override
  _FeedbackWidgetState createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
 TextEditingController commentcontroller = TextEditingController();
  TextEditingController Ratingcontroller = TextEditingController();
  late TextEditingController textController3;
  // ignore: unused_field
  bool _loadingButton1 = false;
  // ignore: unused_field
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  void initState() {
    super.initState();
   commentcontroller= TextEditingController();
   Ratingcontroller= TextEditingController();
    textController3 = TextEditingController();
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color:Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFFAAA1A1),
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
                        child: Text(
                          'fEEDBACK',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10,30, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                      'We want to know what you thought of your experiece at joolsale so we\'d love to hear your feedback.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFAAA1A1),
                      ),
                    ),
                  ),
                )
              ],
            ),
            
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFAAA1A1),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: TextFormField(
                    controller: commentcontroller,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Summary',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFAAA1A1),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
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
                    style:TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFFAAA1A1),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFAAA1A1),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: TextFormField(
                    controller: Ratingcontroller,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'YOUR COMMENT',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFAAA1A1),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
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
                      color: Color(0xFFAAA1A1),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: InkWell(
                onTap: () {
                  sendfeedback();
                },
               child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.transparent,
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  alignment: Alignment(-0.050000000000000044, 0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 27, 0, 15),
                    child: Text(
                      'Send Feedback',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color: Colors.grey,
                          fontSize: 22),
                    ),
                  ),
                ),
             ),), ],
        ),
      ),
      );
  }


 sendfeedback() async{
   var feedback = ApiFeedback();
  feedback.sendFeedback(feedbackData:{
    'summary':commentcontroller.text,
    'rating':Ratingcontroller.text,
  }).then((value){
  print(value);
  });

 
 }
}
