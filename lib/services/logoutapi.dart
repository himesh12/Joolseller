import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:seller/api/apiurl.dart';
import 'package:http/http.dart' as http;

class ApiLogout {
  Future<Map<String, dynamic>> logout() async {
    try {
      http.Response response = await http.post(Uri.parse(ApiUrlsLogout.logout));
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
  }
}
