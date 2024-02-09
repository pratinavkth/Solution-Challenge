class loginrequestmodel {
  Data? data;

  loginrequestmodel({this.data});

  loginrequestmodel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? emailAddress;
  String? password;

  Data({this.emailAddress, this.password});

  Data.fromJson(Map<String, dynamic> json) {
    emailAddress = json['emailAddress'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['emailAddress'] = this.emailAddress;
    data['password'] = this.password;
    return data;
  }
}
