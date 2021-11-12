import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:seller/api/apiurl.dart';
import 'package:http/http.dart' as http;

class OTPLogin {
  Future<Map<String, dynamic>> sendLoginOtp(
      {required String phoneNumber}) async {
    http.Response response = await http
        .post(Uri.parse(ApiUrlsLogin.sendotploginapi), body: {'phone': phoneNumber});
    print('response.body ${response.body}');
    try {
      Map<String, dynamic> newData = json.decode(response.body);
      return newData;
    } catch (e) {
      debugPrint("${response.statusCode}");
      throw "$e";
    }
  }

  Future<Map<String, dynamic>> verifyOtp(
      {required String phoneNumber, required String otp}) async {
    http.Response response = await http.post(
        Uri.parse(ApiUrlsLogin.verifyotploginapi),
        body: {'phone': phoneNumber, 'otp': otp});
    print('response.body ${response.body}');
    try {
      Map<String, dynamic> newData = json.decode(response.body);
      return newData;
    } catch (e) {
      debugPrint("${response.statusCode}");
      throw "$e";
    }
  }
}
