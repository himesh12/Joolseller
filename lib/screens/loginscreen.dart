import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
// ignore: unused_import
import 'package:seller/screens/Dashboard.dart';
// ignore: unused_import
import 'package:seller/screens/Home.dart';
import 'package:seller/screens/loginotp.dart';
// ignore: unused_import
import 'package:seller/screens/optscreen.dart';
import 'package:seller/screens/userdetail.dart';
// ignore: unused_import
import 'package:seller/screens/viewprofile.dart';
import 'package:seller/services/loginapi.dart';
import 'package:seller/services/otplogin.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'forgotpassword.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool? checkboxListTileValue = false;
  bool passwordVisibility = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1.0,
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
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x62000000),
                          )
                        ],
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Color(0xFFA7A5A5),
                          width: 1,
                        ),
                      ),
                      alignment: Alignment(-0.050000000000000044, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: TextFormField(
                          controller: emailcontroller,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Enter Email or mobile No.',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF9E9D9D),
                              fontSize: 18,
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
                            color: Color(0xFF9E9D9D),
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x62000000),
                          )
                        ],
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Color(0xFFA7A5A5),
                          width: 1,
                        ),
                      ),
                      alignment: Alignment(-0.050000000000000044, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        child: TextFormField(
                          controller: passwordcontroller,
                          obscureText:!passwordVisibility,
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF9E9D9D),
                              fontSize: 18,
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
                             
                            suffixIcon: GestureDetector(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              child: Icon(
                                passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                           ),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF9E9D9D),
                            fontSize: 18,
                          ),
                          
                          textAlign: TextAlign.start,
                        ),
                   
                      ),
                    ),
                  ),
                 
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.transparent,
                          )
                        ],
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Color(0x00A7A5A5),
                          width: 1,
                        ),
                      ),
                      alignment: Alignment(1, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return ForgotpassswordWidget();
                          }));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF0B4BB6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
                    child: InkWell(
                      onTap: () {
                        loginwithemailandpassword();
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
                            'CONTINUE',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.transparent,
                          )
                        ],
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Color(0x00A7A5A5),
                          width: 1,
                        ),
                      ),
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'By Login I agree to the Terms and Privacy Policy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF0B4BB6),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: CheckboxListTile(
                                  value: checkboxListTileValue,
                                  onChanged: (newValue) => setState(
                                      () => checkboxListTileValue = newValue),
                                  title: Text(
                                    'Keep me signed in',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF8D8D8D),
                                      fontSize: 16,
                                    ),
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor: Color(0xFF1C1C1C),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xFFBBB3B3),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF727171),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xFFBBB3B3),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Userdetail1Widget();
                        }));
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
                            color: Color(0xFFA7A5A5),
                            width: 1,
                          ),
                        ),
                        alignment: Alignment(-0.050000000000000044, 0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Text(
                            'CREATE NEW ACCOUNT',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF7B7A7A),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  loginwithemailandpassword() async {
    if (emailcontroller.text.length == 0 || emailcontroller.text.length == 0) {
      showToast(
        'Enter all fields',
        context: context,
        animation: StyledToastAnimation.scale,
      );
    } else {
      //if (EmailValidator.validate(emailcontroller.text)) {
  
      LoginApiService().userLogin(userData: {
        'email': emailcontroller.text,
        'password': passwordcontroller.text
      }).then((value) {
        if (value['message'] == "Login Sucessfully" &&
            value['statuscode'] == 200) {
          final userPhoneNumber = value['output']['user']['phone'];
          OTPLogin()
              .sendLoginOtp(
            phoneNumber: userPhoneNumber,
          )
              .then((value) {
            if (value['success'] == 200) {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (BuildContext context) {
                return loginOtpScreen(
                    {'phone': userPhoneNumber, 'flow': 'login'});
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

 storeuserdata(String usertoken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('usertoken', usertoken);
    await prefs.setBool('userloggedin', true);
  }
}
