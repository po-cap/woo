class UserRegisterReq {
  String? username;
  String? password;
  String? email;
  String? firstName;
  String? lastName;

  UserRegisterReq({
    this.username, 
    this.password, 
    this.email, 
    this.firstName, 
    this.lastName
  });

  UserRegisterReq.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toJson() => {
    'username': username,
    'password': password,
    'email': email,
    'first_name': firstName,
    'last_name': lastName
  };
}