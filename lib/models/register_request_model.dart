class registratrationrequestmodel {
  Data? data;

  registratrationrequestmodel({this.data});

  registratrationrequestmodel.fromJson(Map<String, dynamic> json) {
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
  String? confirmPassword;
  String? name;

  Data({this.emailAddress, this.password, this.confirmPassword, this.name});

  Data.fromJson(Map<String, dynamic> json) {
    emailAddress = json['emailAddress'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['emailAddress'] = this.emailAddress;
    data['password'] = this.password;
    data['confirmPassword'] = this.confirmPassword;
    data['Name'] = this.name;
    return data;
  }
}
