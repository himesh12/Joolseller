import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:seller/api/apiurl.dart';

class SignUpApiService {
  Future<Map<String, dynamic>> register(
      {required Map<String, dynamic> userData}) async {
    print(userData);

    try {
      http.Response response = await http.post(
          Uri.parse(ApiUrlsRegistration.register),
          headers: {"X-Requested-With": "XMLHttpRequest", "type": "text"},
          body: userData);

      Map<String, dynamic> newData = json.decode(response.body);
      print(response.statusCode);

      if (response.statusCode != 200) {
        return {
          'statuscode': "400",
          'message': newData['message'],
          'success': 600
        };
      }

      newData.addAll({'statusCode': response.statusCode, 'success': 200});

      return newData;
    } on SocketException {
      //  throw FetchDataException('No Internet connection');
      return {
        'statuscode': 500,
        'message': "No Internet Connection",
        'success': 600
      };
    }

    //  return {'statuscode': 400, 'message': 'server error'};
//      }
  }

  Future<Map<String, dynamic>> checkmember(
      {required Map<String, dynamic> userData}) async {
    print(userData);

    try {
      http.Response response = await http
          .post(Uri.parse(ApiUrlsRegistration.checkUser), body: userData);

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
          'message': newData['message'],
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

      return newData;
    } on SocketException {
      //  throw FetchDataException('No Internet connection');
      return {'statuscode': 500, 'message': "No Internet Connection"};
    }

    //  return {'statuscode': 400, 'message': 'server error'};
//      }
  }

  Future<Map<String, dynamic>> sendotponnumber(
      {required Map<String, dynamic> userData}) async {
    try {
      http.Response response = await http.post(
          Uri.parse(ApiUrlsRegistration.sendotpregisterapi),
          body: userData);
      if (response.statusCode != 200) {
        return {'statusCode': 400, 'message': 'Server Issue', 'success': 600};
      }
      Map<String, dynamic> respData = json.decode(response.body);
      respData.addAll({'statusCode': response.statusCode});
      return respData;
    } on SocketException {
      throw "connection lost";
    } catch (e) {
      print("Error while loging with otp : $e");
      return {
        'statusCode': 400,
        'message': 'Something Went error',
        'success': 600
      };
    }

    //  return {'statuscode': 400, 'message': 'server error'};
//      }
  }

  Future<Map<String, dynamic>> verifyotp(
      {required Map<String, dynamic> userData}) async {
    print(userData);

    try {
      http.Response response = await http.post(
          Uri.parse(ApiUrlsRegistration.verifyotpregisterapi),
          body: userData);
      print(response.body);
      if (response.statusCode != 200) {
        return {'statusCode': 400, 'message': 'Server Issue', 'success': 600};
      }
      Map<String, dynamic> respData = json.decode(response.body);
      respData.addAll({'statusCode': response.statusCode});
      return respData;
    } on SocketException {
      throw "connection lost";
    } catch (e) {
      print("Error while loging with otp : $e");
      return {
        'statusCode': 400,
        'message': 'Something Went error',
        'success': 600
      };
    }

    //  return {'statuscode': 400, 'message': 'server error'};
//      }
  }
}
