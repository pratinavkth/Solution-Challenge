import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mindfuldost_hub/config.dart';
import 'package:mindfuldost_hub/models/login_request_model.dart';
import 'package:mindfuldost_hub/models/login_response_model.dart';
import 'package:mindfuldost_hub/models/register_request_model.dart'; 
import 'package:mindfuldost_hub/services/share_service.dart';
class APIService{

  static var client = http.Client();

  static Future<bool> login(loginrequestmodel model) async{
    Map<String,String> requestHeaders = {
      'Content-Type':'application/json',
      
    };
var url=Uri.http(config.apiurl,config.loginurl);
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode (model.toJson())
      );
    
    if(response.statusCode == 200 ){
      // shared
      await SharedService.setloginDetails(loginresponseJson(response.body));

      return true;
    }else{
      return false;
    }

  }
  static Future<bool> register(registratrationrequestmodel model) async{
    Map<String,String> requestHeaders = {
      'Content-Type':'application/json',
      
    };
var url=Uri.http(config.apiurl,config.registerurl);
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode (model.toJson())
      );
    
    if(response.statusCode == 200 ){
      // shared

      return true;
    }else{
      return false;
    }

  }
}