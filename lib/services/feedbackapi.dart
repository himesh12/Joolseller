import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:seller/api/apiurl.dart';
import 'package:http/http.dart' as http;

class ApiFeedback {
  get token => null;

  

 Future<Map<String, dynamic>> sendFeedback(
      {required Map<String, dynamic> feedbackData}) async {
    print(feedbackData);

    try
     {
      http.Response response = await http.post(
          Uri.parse(ApiUrlsFeedback.appfeedback),
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token',},
          body: feedbackData);

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
}