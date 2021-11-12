import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:http/http.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
// ignore: unused_import
import 'package:seller/screens/Addproduct.dart';
// ignore: unused_import
import 'package:seller/screens/Dashboard.dart';
import 'package:seller/screens/Home.dart';
// ignore: unused_import
import 'package:seller/screens/changepassword.dart';
// ignore: unused_import
import 'package:seller/screens/userdeatil2.dart';
import 'package:seller/services/otplogin.dart';

// ignore: camel_case_types
class loginOtpScreen extends StatefulWidget {
  final Map<String, dynamic> data;
  loginOtpScreen(this.data);
  @override
  _loginOtpScreenState createState() => _loginOtpScreenState();
}

// ignore: camel_case_types
class _loginOtpScreenState extends State<loginOtpScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String otppin = "";

  var token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF686464)),
        automaticallyImplyLeading: true,
        title: Text(
          'Back',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFF181818),
            fontSize: 18,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Enter 6 digit OTP sent on your mobile/email',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF7B7979),
                    fontSize: 16,
                  ),
                ),
                OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: double.parse(
                      (MediaQuery.of(context).size.width / 8).toString()),
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    setState(() {
                      otppin = pin;
                      print(otppin);
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
                  child: InkWell(
                    onTap: () {
                      otpverify();
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
                          'ENTER',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  otpverify() {
    print('i am here');
    OTPLogin()
        .verifyOtp(phoneNumber: widget.data['phone'], otp: otppin)
        .then((value) {
          print(value);
      if (value['success'] == 200) {
        if (widget.data['flow'] == 'login') {
     

          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (BuildContext context) {
            return HomeScreen();
          }), (route) => false);
        } else {
          print('route to forget password');
        }
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
    return;
  }
}
