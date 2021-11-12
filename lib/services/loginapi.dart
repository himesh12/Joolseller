import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:seller/api/apiurl.dart';
import 'package:http/http.dart' as http;

import 'dart:io';

class LoginApiService {
  Future<Map<String, dynamic>> userLogin(
      {required Map<String, dynamic> userData}) async {
    print(userData);

    try {
      http.Response response = await http.post(Uri.parse(ApiUrlsLogin.loginapi),
          headers: {
            "key": "X-Requested-With",
            "value": "XMLHttpRequest",
            "type": "text"
          },
          body: userData);

      print('response.body ${response.body}');

      Map<String, dynamic> newData = json.decode(response.body);
      print(newData['success']);
      print(newData['message']);

      print(response.statusCode);
      if (response.statusCode >= 500) {
        return {
          'statuscode': response.statusCode,
          'message': newData['message'],
        };
      }
      if (response.statusCode < 500 && response.statusCode >= 400) {
        print(response.body);
        return {
          'statuscode': response.statusCode,
          'message': newData['message']
        };
      }
      if (response.statusCode < 400 && response.statusCode >= 300) {
        return {
          'statuscode': response.statusCode,
          'message': newData['message']
        };
      }

      if (response.statusCode != 200) {
        return {
          'statuscode': response.statusCode,
          'message': newData['message']
        };
      }

      newData.addAll({'statuscode': response.statusCode});
      print(newData);
      return newData;
    } on SocketException {
      print('erroe');
      //  throw FetchDataException('No Internet connection');
      return {'statuscode': 500, 'message': "No Internet Connection"};
    }

    //  return {'statuscode': 400, 'message': 'server error'};
//      }
  }

  Future<Map<String, dynamic>> usercheckaccount(
      {required Map<String, dynamic> userData}) async {
    http.Response response =
        await http.post(Uri.parse(ApiUrlsLogin.checkUser), body: userData);
    print(response.statusCode);
    try {
      Map<String, dynamic> newData = json.decode(response.body);
      if (response.statusCode >= 500) {
        return {
          'statuscode': response.statusCode,
          'message': newData['message'],
        };
      }
      if (response.statusCode < 500 && response.statusCode >= 400) {
        return {
          'statuscode': response.statusCode,
          'message': newData['message']
        };
      }
      if (response.statusCode < 400 && response.statusCode >= 300) {
        return {
          'statuscode': response.statusCode,
          'message': newData['message']
        };
      }

      if (newData["status"] != "200") {
        return {
          'statuscode': response.statusCode,
          'message': newData['message']
        };
      }

      print(newData);
      return newData;
    } catch (e) {
      debugPrint("${response.statusCode}");
      throw "$e";
    }
  }

  
}
