class User {
  String _email = '';
  String _firstName = '';
  String _lastName = '';
  String _password = '';

  User(this._email, this._firstName, this._lastName, this._password);

  String get email => this._email;
  String get firstName => this._firstName;
  String get lastName => this._lastName;
  String get password => this._password;

  set email(String email) {
    this._email = email;
  }

  set firstName(String firstName) {
    this._firstName = firstName;
  }

  set lastName(String lastName) {
    this._lastName = lastName;
  }

  set password(String password) {
    this._password = password;
  }

  User.fromMap(map) {
    this._email = map["email"];
    this._firstName = map["firstName"];
    this._lastName = map["lastName"];
    this._password = map["password"];
  }

  User.fromJson(Map<String, String> parsedJson) {
    _email = parsedJson['email'];
    _firstName = parsedJson['firstName'];
    _lastName = parsedJson['lastName'];
    _password = parsedJson['password'];
  }

  toMap() {
    var map = Map<String, dynamic>();
    map["email"] = email;
    map["firstName"] = firstName;
    map["lastName"] = lastName;
    map["password"] = password;

    return map;
  }
}
