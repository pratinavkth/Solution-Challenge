import 'dart:convert';

registrationresponsemodel registrationresponsemodelFromJson(String str) =>
    registrationresponsemodel.fromJson(json.decode(str));
class registrationresponsemodel {
  String? message;
  String? messageCode;
  int? statusCode;
  Data? data;

  registrationresponsemodel(
      {this.message, this.messageCode, this.statusCode, this.data});

  registrationresponsemodel.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    messageCode = json['MessageCode'];
    statusCode = json['statusCode'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['MessageCode'] = this.messageCode;
    data['statusCode'] = this.statusCode;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? emailAddress;
  String? password;
  String? confirmPassword;
  String? token;
  String? name;

  Data(
      {this.emailAddress,
      this.password,
      this.confirmPassword,
      this.token,
      this.name});

  Data.fromJson(Map<String, dynamic> json) {
    emailAddress = json['emailAddress'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
    token = json['token'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['emailAddress'] = this.emailAddress;
    data['password'] = this.password;
    data['confirmPassword'] = this.confirmPassword;
    data['token'] = this.token;
    data['Name'] = this.name;
    return data;
  }
}
