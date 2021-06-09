import 'package:equatable/equatable.dart';

class User extends Equatable {
  String id;
  String firstName;
  String lastName;
  String email;
  String password;
  bool isEnabled;

  User(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.isEnabled});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'] as String,
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
        email: json['email'] as String,
        password: json['password'] as String,
        isEnabled: json['isEnabled'] as bool);
  }

  @override
  List<Object> get props =>
      [id, firstName, lastName, email, password, isEnabled];
}
