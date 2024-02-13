class RegisterModel {
  String? firstName;
  String? lastName;
  String? email;
  String? account;
  String? password;
  String? role;
  String? contactNumber;

  RegisterModel({
    this.firstName,
    this.lastName,
    this.email,
    this.account,
    this.password,
    this.role,
    this.contactNumber,
  });

  RegisterModel.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    account = json['account'];
    password = json['password'];
    role = json['role'];
    contactNumber = json['contactNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['account'] = account;
    data['password'] = password;
    data['role'] = role;
    data['contactNumber'] = contactNumber;
    return data;
  }
}
