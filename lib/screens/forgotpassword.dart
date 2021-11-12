import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
//import 'package:seller/screens/Home.dart';
// ignore: unused_import
import 'package:seller/screens/loginotp.dart';
import 'package:seller/services/forgotpasswordapi.dart';
// ignore: unused_import
import 'package:seller/services/loginapi.dart';
import 'package:seller/services/otplogin.dart';

class ForgotpassswordWidget extends StatefulWidget {


  @override
  _ForgotpassswordWidgetState createState() => _ForgotpassswordWidgetState();
}

class _ForgotpassswordWidgetState extends State<ForgotpassswordWidget> {
  TextEditingController emailcontroller = TextEditingController();
   bool? checkboxListTileValue = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailcontroller = TextEditingController();
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
          size: 24,
        ),
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 220, 0),
          child: Text(
            'Back',
            style: TextStyle(
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
              'Forgot Password',
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
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0x95a1ac),
                      borderRadius: BorderRadius.circular(0),
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
                            child: TextFormField(
                              controller:emailcontroller,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter phone number or email',
                                hintStyle: TextStyle(
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
                        sendforgototp();
                      },
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFF1F1F1F),
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
                    'Continue',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
              ))
           ) ],
      ),
    );
  }

  sendforgototp() async {
    
    if (emailcontroller.text.length == 0) {
      showToast(
        'Enter all fields',
        context: context,
        animation: StyledToastAnimation.scale,
      );
    } else {
      //if (EmailValidator.validate(emailcontroller.text)) {
          ApiForgotPassword().checkmember(userData: {
        'username': emailcontroller.text,
        }).then((value) {
          print('i am here');
           print(value['message'] );
           print( value['statuscode']);
        if (value['message'] == "User Already Exist" &&
            value['statusCode'] == 200) {
              print('i am here');
           print(value);
         // final userPhoneNumber = value['output']['user']['phone'];
         final userPhoneNumber =  emailcontroller.text;
          OTPLogin()
              .sendLoginOtp(
            phoneNumber: userPhoneNumber,
          )
              .then((value) {
            if (value['success'] == 200) {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (BuildContext context) {
                return loginOtpScreen(
                    {'phone': userPhoneNumber, 'flow': 'forgotpassword'});
              }), (route) => false);
            } else {
              print(value['message']);
              showToast(
                value['message'],
                context: context,
                animation: StyledToastAnimation.scale,
              );
              print('wrong');
            }
          });
        } else {
          print(value['message']);
          showToast(
            value['message'],
            context: context,
            animation: StyledToastAnimation.scale,
          );
          print('wrong');
        }
      });
      // } else {
      // showToast(
      //   'Enter valid email',
      //   context: context,
      //    animation: StyledToastAnimation.scale,
      //  );
      // }
    }
  }
}
