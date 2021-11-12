import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
// ignore: unused_import
import 'package:seller/screens/userdeatil2.dart';
import 'package:seller/services/signupapi.dart';

import 'optscreen.dart';

class Userdetail1Widget extends StatefulWidget {
  //Userdetail1Widget({Key key}) : super(key: key);

  @override
  _Userdetail1WidgetState createState() => _Userdetail1WidgetState();
}

class _Userdetail1WidgetState extends State<Userdetail1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  TextEditingController phonecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();

    phonecontroller = TextEditingController();
    namecontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                     },
                  child: Container(
                    width: 40,
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
          ],
        ),
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 220, 0),
          child: Text(
            'Back',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontSize: 20,
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 4,
      ),
      
      backgroundColor: Colors.white,
       body: SafeArea(
         child: SingleChildScrollView(
      child:Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 29, 0, 0),
            child: Text(
              'Let\"s start your journey',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
             child: SingleChildScrollView(
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
                  controller: namecontroller,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Your Name',
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
                  controller: phonecontroller,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Your Phone Number',
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
                    hintText: 'Enter Your Email',
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
                  controller: passwordcontroller,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Create Your Password',
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
              child: InkWell(
                onTap: () {
                  registeruser();
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
                ),
              ))
        ],
      ),
       )
    ));
      
  }

  registeruser() async {
    if (emailcontroller.text.length == 0 ||
        namecontroller.text.length == 0 ||
        passwordcontroller.text.length == 0 ||
        phonecontroller.text.length == 0) {
      showToast(
        "Enter all fields",
        context: context,
        animation: StyledToastAnimation.scale,
      );
    } else {
      if (EmailValidator.validate(emailcontroller.text)) {
        SignUpApiService()
            .checkmember(userData: {'username': emailcontroller.text}).then(
                (isemailregisteredalready) {
          if (isemailregisteredalready['success'] == 200) {
            SignUpApiService()
                .checkmember(userData: {'username': phonecontroller.text}).then(
                    (isphoneregisteredalready) {
              if (isphoneregisteredalready['success'] == 200) {
                if (isemailregisteredalready['message'] ==
                        "User does not exist" &&
                    isphoneregisteredalready['message'] ==
                        "User does not exist") {
                  SignUpApiService().sendotponnumber(
                      userData: {'phone': phonecontroller.text}).then((value) {
                    if (value['statusCode'] == 400) {
                      return;
                    } else {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return OtpScreen({
                          "name": namecontroller.text,
                          'phone': phonecontroller.text,
                          'email': emailcontroller.text,
                          'password': passwordcontroller.text
                        });
                      }));
                    }
                  });
                } else {
                  String st = isemailregisteredalready['message'] ==
                          "User Already Exist"
                      ? "Email "
                      : "";

                  String stphone = isphoneregisteredalready['message'] ==
                          "User Already Exist"
                      ? "${st.length == 0 ? "" : 'and '}Phone "
                      : "";
                  print(st + stphone + "already registered");
                }
              } else {
                showToast(
                  "Number already registered",
                  context: context,
                  animation: StyledToastAnimation.scale,
                );
              }
            });
          } else {
            showToast(
              "Email already Exist",
              context: context,
              animation: StyledToastAnimation.scale,
            );
          }
        });
      } else {
        showToast(
          "Enter a valid email",
          context: context,
          animation: StyledToastAnimation.scale,
        );
      }
    }
  }
}
